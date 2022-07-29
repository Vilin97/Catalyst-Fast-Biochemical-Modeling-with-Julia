# Previosuly one separate file for each benchmark. this file will combine them into a single one, which changes benchmark depending on behaviours.


### Preparations ###

# Activate local environment.
import Pkg
Pkg.activate(".")

# Fetch packages.
using BenchmarkTools
using DiffEqJump
using JSON
using LSODA
using ModelingToolkit
using OrdinaryDiffEq
using ReactionNetworkImporters
using Sundials

# Reads input selection.
modelname,methodName,minT,maxT,nT = ARGS
jac = (length(ARGS)>5)&&(ARGS[6]=="jacobian")

# Sets the method.
solver = Dict(["lsoda" => lsoda(), "CVODE_BDF" => CVODE_BDF(), "TRBDF2" => TRBDF2(), "KenCarp4" => KenCarp4(), "QNDF" => QNDF(), "FBDF" => FBDF(), "Direct" => Direct(), "SortingDirect" => SortingDirect(), "RSSA" => RSSA(), "RSSACR" => RSSACR()])[methodName]
methodType = Dict(["lsoda" => :ODE, "CVODE_BDF" => :ODE , "TRBDF2" => :ODE , "KenCarp4" => :ODE , "QNDF" => :ODE, "FBDF" => :ODE , "Direct" => :Jump , "SortingDirect" => :Jump , "RSSA" => :Jump , "RSSACR" => :Jump])[methodName]

# Declares a serilization function.
function serialize_benchmarks(benchmarks,lengs,methodName)
    medians = map(bm -> median(bm.times)/1000000, benchmarks)
    open("../Benchmarking_results/catalyst_$(methodName)_$(modelname).json","w") do f
        JSON.print(f, Dict("benchmarks"=>benchmarks, "medians"=>medians, "lengs"=>lengs))
    end
 end

# Sets benchamrking lengths
lengs = 10 .^(range(parse(Float64,minT),stop=parse(Float64,maxT),length=parse(Int64,nT))); 

### Benchmarking ###

# Load model.
model = loadrxnetwork(BNGNetwork(), "../Data/$(modelname)_no_obs.net");
# Benchmark model.
if methodType == :ODE
    (methodName==CVODE_BDF) && in(model,["egfr_net", "BCR", "fceri_gamma2"]) && (solver = CVODE_BDF(linear_solver=:LapackDense))
    (methodName==CVODE_BDF) && jac && (solver = CVODE_BDF(linear_solver=:KLU))
    if jac
        oprob = ODEProblem(convert(ODESystem,model.rn),model.u₀,(0.0,0.0),model.p,jac=true,sparse=true)
    else
        oprob = ODEProblem(model.rn,model.u₀,(0.0,0.0),model.p)
    end
    benchmarks = map(leng -> (op_interal = remake(oprob,tspan=(0.0,leng)); (@benchmark solve($op_interal,$solver));), lengs);
    serialize_benchmarks(benchmarks,lengs,(jac ? methodName*"_jac" : methodName))
elseif methodType == :Jump
    dprob = DiscreteProblem(model.rn,model.u₀,(0.0,0.0),model.p); dprob = remake(dprob,u0=Int64.(dprob.u0));
    jprob = JumpProblem(model.rn,dprob,solver,save_positions=(false,false))
    benchmarks = map(leng -> (jp_internal = remake(jprob,tspan=(0.0,leng)); (@benchmark solve($jp_internal,$(SSAStepper())));), lengs);
    serialize_benchmarks(benchmarks,lengs,methodName)
end


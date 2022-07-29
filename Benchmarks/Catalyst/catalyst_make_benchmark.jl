# Previosuly one separate file for each benchmark. this file will combine them into a single one, which changes benchmark depending on behaviours.


### Preparations ###

# Activate local environment.
import Pkg
Pkg.activate(".")

# Fetch packages.
using BenchmarkTools
using DifferentialEquations
using DiffEqJump
using JSON
using LSODA
using ModelingToolkit
using OrdinaryDiffEq
using ReactionNetworkImporters
using Sundials

# Reads input selection.
modelName,methodName,minT,maxT,nT = ["multisite2", "RSSACR", "1", "5", "9"]
jac = in("jac", ARGS)
sparse = in("sparse", ARGS)  

# Sets the method.
solver = Dict(["lsoda" => lsoda(), "CVODE_BDF" => CVODE_BDF(), "TRBDF2" => TRBDF2(), "KenCarp4" => KenCarp4(), "QNDF" => QNDF(), "FBDF" => FBDF(), "Rosenbrock23" => Rosenbrock23(), "Direct" => Direct(), "SortingDirect" => SortingDirect(), "RSSA" => RSSA(), "RSSACR" => RSSACR()])[methodName]
methodType = Dict(["lsoda" => :ODE, "CVODE_BDF" => :ODE , "TRBDF2" => :ODE , "KenCarp4" => :ODE , "QNDF" => :ODE, "FBDF" => :ODE, "Rosenbrock23" => :ODE, "Direct" => :Jump , "SortingDirect" => :Jump , "RSSA" => :Jump , "RSSACR" => :Jump])[methodName]

# Declares a serilization function.
function serialize_benchmarks(benchmarks,lengs,methodName)
    medians = map(bm -> median(bm.times)/1000000, benchmarks)
    open("../Benchmarking_results/catalyst_$(methodName)_$(modelName).json","w") do f
        JSON.print(f, Dict("benchmarks"=>benchmarks, "medians"=>medians, "lengs"=>lengs))
    end
 end

# Sets benchmarking lengths
lengs = 10 .^(range(parse(Float64,minT),stop=parse(Float64,maxT),length=parse(Int64,nT))); 

# Proclaims start of benchmarking.
print_message = "Beginning benchmarks for $(modelName) using $(methodName)"
jac && (print_message=print_message*" (jac)"); sparse && (print_message=print_message*" (sparse)"); 
println("\n-----     ",print_message,"     -----")

### Benchmarking ###

# Load model.
if (modelName=="BCR") && (methodType == :Jump)
    model = loadrxnetwork(BNGNetwork(), "../Data/postequil_c3.net");
else
    model = loadrxnetwork(BNGNetwork(), "../Data/$(modelName)_no_obs.net");
end

# Benchmark model.
if methodType == :ODE
    oprob = ODEProblem(convert(ODESystem,model.rn),Float64[],(0.0,0.0),Float64[],sparse=sparse,jac=jac)
    if jac
        solver = Dict(["CVODE_BDF" => CVODE_BDF(linear_solver=:KLU), "TRBDF2" => TRBDF2(linsolve=KLUFactorization()), "KenCarp4" => KenCarp4(linsolve=KLUFactorization()), "QNDF" => QNDF(linsolve=KLUFactorization()), "FBDF" => FBDF(linsolve=KLUFactorization()), "Rosenbrock23" => Rosenbrock23(linsolve=KLUFactorization())])[methodName]
    else
        (methodName=="CVODE_BDF") && in(modelName,["egfr_net", "BCR", "fceri_gamma2"]) && (solver = CVODE_BDF(linear_solver=:LapackDense))
    end
    benchmarks = map(leng -> (op_interal = remake(oprob,tspan=(0.0,leng)); (@benchmark solve($op_interal,$solver,abstol=1e-12,reltol=1e-6));), lengs);
    jac && (methodName=methodName*"_jac"); sparse && (methodName=methodName*"_sparse");  
    serialize_benchmarks(benchmarks,lengs,methodName)
elseif methodType == :Jump
    if (modelName=="BCR") && (methodType == :Jump)
        dprob = DiscreteProblem(model.rn,JSON.parsefile("../Data/BCR_SSA_u0.json"),(0.0,0.0),model.p); 
    else
        dprob = DiscreteProblem(model.rn,model.u₀,(0.0,0.0),model.p); dprob = remake(dprob,u0=Int64.(dprob.u0));
    end
    dprob = remake(dprob,u0=Int64.(dprob.u0));
    jprob = JumpProblem(model.rn,dprob,solver,save_positions=(false,false))
    benchmarks = map(leng -> (jp_internal = remake(jprob,tspan=(0.0,leng)); (@benchmark solve($jp_internal,$(SSAStepper())));), lengs);
    serialize_benchmarks(benchmarks,lengs,methodName)
end

# Proclaims benchmark over.
println("-----     Benchmark finished.     -----")

if (modelName=="BCR") && (methodType == :Jump)
    dprob = DiscreteProblem(model.rn,JSON.parsefile("../Data/BCR_SSA_u0.json"),(0.0,0.0),model.p); 
else
    dprob = DiscreteProblem(model.rn,model.u₀,(0.0,0.0),model.p); dprob = remake(dprob,u0=Int64.(dprob.u0));
end
dprob = remake(dprob,u0=Int64.(dprob.u0));
jprob = JumpProblem(model.rn,dprob,solver,save_positions=(false,false))
benchmarks = map(leng -> (jp_internal = remake(jprob,tspan=(0.0,leng)); (@benchmark solve($jp_internal,$(SSAStepper())));), lengs);
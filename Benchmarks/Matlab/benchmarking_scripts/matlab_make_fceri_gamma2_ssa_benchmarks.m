%%% Preparations %%%

% Set input.
lengs = logspace(1,3,7);

%Disables warnings (required to run things from an .sh script...).
warning('off')


%%% Benchmarks %%%

%Load model.
model = sbmlimport('../../Data/fceri_gamma2_no_obs.xml');
clean_ssa_sbml_model(model)

% Benchmark ODE simulations.
benchmarks = zeros(1,length(lengs));
for i = 1:length(benchmarks)
    f = @() ssa_sim_model(model,lengs(i));
    benchmarks(i) = 1000*timeit(f);
end

% Saves results
output = containers.Map;
output('medians') = benchmarks;
output('lengs') = lengs;

fid = fopen('../../Benchmarking_results/matlab_ssa_fceri_gamma2.json','w') ;
encodedJSON = jsonencode(output); 
fprintf(fid, encodedJSON); 
fclose('all'); 
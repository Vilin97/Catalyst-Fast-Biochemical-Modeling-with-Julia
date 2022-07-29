function [t, x, names] = ssa_sim_model(model,leng)
    cs = getconfigset(model);
    cs.SolverType = 'ssa';         
    cs.StopTime = leng;
    
    [t, x, names] = sbiosimulate(model);
end
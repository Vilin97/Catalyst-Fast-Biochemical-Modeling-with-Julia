%%% Multistate %%%
model_multistate = sbmlimport('../../Data/multistate.xml');
model_multistate_no_obs = sbmlimport('../../Data/multistate_no_obs.xml');

% ODE %

% Check ODE simulation outputs.
[t_ode_multistate, x_ode_multistate, names_multistate] = ode_sim_model(model_multistate,10.0);
plot(t_ode_multistate, x_ode_multistate(:,end-3:end))
xlabel('Time')
ylabel('States')
plot_ode_multistate_short = legend(names_multistate(end-3:end))
saveas(plot_ode_multistate_short,'../../Plots/Matlab/ode_multistate_short.png')
saveas(plot_ode_multistate_short,'../../Plots/Matlab/ode_multistate_short.pdf')

% Check ODE simulation outputs for maximum length simulation.
[long_t_ode_multistate, long_x_ode_multistate, long_names_multistate] = ode_sim_model(model_multistate,100000.0);
plot(long_t_ode_multistate, long_x_ode_multistate(:,end-3:end))
xlabel('Time')
ylabel('States')
plot_ode_multistate_long = legend(long_names_multistate(end-3:end))
saveas(plot_ode_multistate_long,'../../Plots/Matlab/ode_multistate_long.png')
saveas(plot_ode_multistate_long,'../../Plots/Matlab/ode_multistate_long.pdf')

% Check ODE simulation times.
tic
   ode_sim_model(model_multistate_no_obs,10.0);
toc

% SSA %

% Check SSA simulation outputs (display of observables currently not working - error files with Matworks and no response yet).
clean_ssa_sbml_model(model_multistate)
[t_ssa_multistate, x_ssa_multistate, names_multistate] = ssa_sim_model(model_multistate,10.0);
% plot(t_ssa_multistate, x_ssa_multistate(:,end-3:end))
% xlabel('Time')
% ylabel('States')
% plot_ssa_multistate = legend(names_multistate(end-3:end))
% saveas(plot_ssa_multistate,'../../Plots/Matlab/ssa_multistate.png')
% saveas(plot_ssa_multistate,'../../Plots/Matlab/ssa_multistate.pdf')

% Check SSA simulation times.
clean_ssa_sbml_model(model_multistate_no_obs)
tic
   ode_sim_model(model_multistate_no_obs,10.0);
toc



%%% Multisite2 %%%
model_multisite2 = sbmlimport('../../Data/multisite2.xml');
model_multisite2_no_obs = sbmlimport('../../Data/multisite2_no_obs.xml');

% ODE %

% Check ODE simulation outputs.
[t_ode_multisite2, x_ode_multisite2, names_multisite2] = ode_sim_model(model_multisite2,10.0);
plot(t_ode_multisite2, x_ode_multisite2(:,end-2:end))
xlabel('Time')
ylabel('States')
plot_ode_multisite2_short = legend(names_multisite2(end-2:end))
saveas(plot_ode_multisite2_short,'../../Plots/Matlab/ode_multisite2_short.png')
saveas(plot_ode_multisite2_short,'../../Plots/Matlab/ode_multisite2_short.pdf')

% Check ODE simulation outputs for maximum length simulation.
[long_t_ode_multisite2, long_x_ode_multisite2, long_names_multisite2] = ode_sim_model(model_multisite2,10000.0);
plot(long_t_ode_multisite2, long_x_ode_multisite2(:,end-2:end))
xlabel('Time')
ylabel('States')
plot_ode_multisite2_long = legend(long_names_multisite2(end-2:end))
saveas(plot_ode_multisite2_long,'../../Plots/Matlab/ode_multisite2_long.png')
saveas(plot_ode_multisite2_long,'../../Plots/Matlab/ode_multisite2_long.pdf')

% Check ODE simulation times.
tic
   ode_sim_model(model_multisite2_no_obs,10.0);
toc

% SSA %

% Check SSA simulation outputs (display of observables currently not working - error files with Matworks and no response yet).
clean_ssa_sbml_model(model_multisite2)
[t_ssa_multisite2, x_ssa_multisite2, names_multisite2] = ssa_sim_model(model_multisite2,10.0);
% plot(t_ssa_multisite2, x_ssa_multisite2(:,end-2:end))
% xlabel('Time')
% ylabel('States')
% plot_ssa_multisite2 = legend(names_multisite2(end-2:end))
% saveas(plot_ssa_multisite2,'../../Plots/Matlab/ssa_multisite2.png')
% saveas(plot_ssa_multisite2,'../../Plots/Matlab/ssa_multisite2.pdf')

% Check SSA simulation times.
clean_ssa_sbml_model(model_multisite2_no_obs)
tic
   ode_sim_model(model_multisite2_no_obs,10.0);
toc


%%% Egfr_net %%%
model_egfr_net = sbmlimport('../../Data/egfr_net.xml');
model_egfr_net_no_obs = sbmlimport('../../Data/egfr_net_no_obs.xml');

% ODE %

% Check ODE simulation outputs.
[t_ode_egfr_net, x_ode_egfr_net, names_egfr_net] = ode_sim_model(model_egfr_net,10.0);
plot(t_ode_egfr_net, x_ode_egfr_net(:,end-12:end))
xlabel('Time')
ylabel('States')
plot_ode_egfr_net_short = legend(names_egfr_net(end-12:end))
saveas(plot_ode_egfr_net_short,'../../Plots/Matlab/ode_egfr_net_short.png')
saveas(plot_ode_egfr_net_short,'../../Plots/Matlab/ode_egfr_net_short.pdf')

% Check ODE simulation outputs for maximum length simulation.
[long_t_ode_egfr_net, long_x_ode_egfr_net, long_names_egfr_net] = ode_sim_model(model_egfr_net,1000.0);
plot(long_t_ode_egfr_net, long_x_ode_egfr_net(:,end-12:end))
xlabel('Time')
ylabel('States')
plot_ode_egfr_net_long = legend(long_names_egfr_net(end-12:end))
saveas(plot_ode_egfr_net_long,'../../Plots/Matlab/ode_egfr_net_long.png')
saveas(plot_ode_egfr_net_long,'../../Plots/Matlab/ode_egfr_net_long.pdf')

% Check ODE simulation times.
tic
   ode_sim_model(model_egfr_net_no_obs,10.0);
toc

% SSA %
% Gillespie simulations not performed using Matlab for the egfr_net model (Matlab crashes - error files with Matworks and no response yet). %

% Check SSA simulation outputs (display of observables currently not working - error files with Matworks and no response yet).
% clean_ssa_sbml_model(model_egfr_net)
% [t_ode_egfr_net, x_ode_egfr_net, names_egfr_net] = ssa_sim_model(model_egfr_net,10.0);
% plot(t_ode_egfr_net, x_ode_egfr_net(:,end-12:end))
% xlabel('Time')
% ylabel('States')
% legend(names_egfr_net(end-12:end))

% Check SSA simulation times.
% clean_ssa_sbml_model(model_egfr_net_no_obs)
% tic
%    ode_sim_model(model_egfr_net_no_obs,10.0);
% toc


%%% BCR %%%
model_BCR = sbmlimport('../../Data/BCR.xml');
model_BCR_no_obs = sbmlimport('../../Data/BCR_no_obs.xml');

% ODE %

% Check ODE simulation outputs.
[t_ode_BCR, x_ode_BCR, names_BCR] = ode_sim_model(model_BCR,10.0);
plot(t_ode_BCR, x_ode_BCR(:,end-8:end))
xlabel('Time')
ylabel('States')
plot_ode_BCR_short = legend(names_BCR(end-8:end))
saveas(plot_ode_BCR_short,'../../Plots/Matlab/ode_BCR_short.png')
saveas(plot_ode_BCR_short,'../../Plots/Matlab/ode_BCR_short.pdf')

% Check ODE simulation outputs for maximum length simulation.
[long_t_ode_BCR, long_x_ode_BCR, long_names_BCR] = ode_sim_model(model_BCR,1000.0);
plot(long_t_ode_BCR, long_x_ode_BCR(:,end-8:end))
xlabel('Time')
ylabel('States')
plot_ode_BCR_long = legend(long_names_BCR(end-8:end))
saveas(plot_ode_BCR_long,'../../Plots/Matlab/ode_BCR_long.png')
saveas(plot_ode_BCR_long,'../../Plots/Matlab/ode_BCR_long.pdf')

% Check ODE simulation times.
tic
   ode_sim_model(model_BCR_no_obs,10.0);
toc

% SSA %
% Gillespie simulations not performed using Matlab for the BCR model (Matlab crashes - error files with Matworks and no response yet). %

% Check SSA simulation outputs (display of observables currently not working - error files with Matworks and no response yet).
% clean_ssa_sbml_model(model_BCR)
% [t_ssa_BCR, x_ssa_BCR, names_BCR] = ssa_sim_model(model_BCR,10.0);
% plot(t_ssa_BCR, x_ssa_BCR(:,end-8:end))
% xlabel('Time')
% ylabel('States')
% legend(names_BCR(end-8:end))

% Check SSA simulation times.
% clean_ssa_sbml_model(model_BCR_no_obs)
% tic
%    ode_sim_model(model_BCR_no_obs,10.0);
% toc


%%% Fceri_gamma2 %%%
model_fceri_gamma2 = sbmlimport('../../Data/fceri_gamma2.xml');
model_fceri_gamma2_no_obs = sbmlimport('../../Data/fceri_gamma2_no_obs.xml');

% ODE %

% Check ODE simulation outputs.
[t_ssa_fceri_gamma2, x_ssa_fceri_gamma2, names_fceri_gamma2] = ode_sim_model(model_fceri_gamma2,10.0);
plot(t_ssa_fceri_gamma2, x_ssa_fceri_gamma2(:,end-5:end))
xlabel('Time')
ylabel('States')
plot_ode_fceri_gamma2_short = legend(names_fceri_gamma2(end-5:end))
saveas(plot_ode_fceri_gamma2_short,'../../Plots/Matlab/ode_fceri_gamma2_short.png')
saveas(plot_ode_fceri_gamma2_short,'../../Plots/Matlab/ode_fceri_gamma2_short.pdf')

% Check ODE simulation outputs for maximum length simulation.
[long_t_ssa_fceri_gamma2, long_x_ssa_fceri_gamma2, long_names_fceri_gamma2] = ode_sim_model(model_fceri_gamma2,1000.0);
plot(long_t_ssa_fceri_gamma2, long_x_ssa_fceri_gamma2(:,end-5:end))
xlabel('Time')
ylabel('States')
plot_ode_fceri_gamma2_long = legend(long_names_fceri_gamma2(end-5:end))
saveas(plot_ode_fceri_gamma2_long,'../../Plots/Matlab/ode_fceri_gamma2_long.png')
saveas(plot_ode_fceri_gamma2_long,'../../Plots/Matlab/ode_fceri_gamma2_long.pdf')

% Check ODE simulation times.
tic
   ode_sim_model(model_fceri_gamma2_no_obs,10.0);
toc

% SSA %
% Gillespie simulations not performed using Matlab for the fceri_gamma2 model (Matlab crashes - error files with Matworks and no response yet). %

% Check SSA simulation outputs (display of observables currently not working - error files with Matworks and no response yet).
% clean_ssa_sbml_model(model_fceri_gamma2)
% [t_ssa_fceri_gamma2, x_ssa_fceri_gamma2, names_fceri_gamma2] = ssa_sim_model(model_fceri_gamma2,10.0);
% plot(t_ssa_fceri_gamma2, x_ssa_fceri_gamma2(:,end-5:end))
% xlabel('Time')
% ylabel('States')
% legend(names_fceri_gamma2(end-5:end))

% Check SSA simulation times.
% clean_ssa_sbml_model(model_fceri_gamma2_no_obs)
% tic
%    ode_sim_model(model_fceri_gamma2_no_obs,10.0);
% toc
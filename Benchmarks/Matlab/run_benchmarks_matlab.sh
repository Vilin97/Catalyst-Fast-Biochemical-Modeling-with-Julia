#!/bin/bash

echo "Starts benchmark runs on the multistate model."
time matlab -nodisplay -nosplash -nodesktop -r "run('benchmarking_scripts/matlab_make_multistate_ode_benchmarks.m');exit;"
#time matlab -nodisplay -nosplash -nodesktop -r "run('benchmarking_scripts/matlab_make_multistate_ssa_benchmarks.m');exit;"

echo "Starts benchmark runs on the multisite2 model."
time matlab -nodisplay -nosplash -nodesktop -r "run('benchmarking_scripts/matlab_make_multisite2_ode_benchmarks.m');exit;"
#time matlab -nodisplay -nosplash -nodesktop -r "run('benchmarking_scripts/matlab_make_multisite2_ssa_benchmarks.m');exit;"

echo "Starts benchmark runs on the egfr_net model."
time matlab -nodisplay -nosplash -nodesktop -r "run('benchmarking_scripts/matlab_make_egfr_net_ode_benchmarks.m');exit;"

echo "Starts benchmark runs on the BCR model."
time matlab -nodisplay -nosplash -nodesktop -r "run('benchmarking_scripts/matlab_make_BCR_ode_benchmarks.m');exit;"

echo "Starts benchmark runs on the fceri_gamma2 model."
time matlab -nodisplay -nosplash -nodesktop -r "run('benchmarking_scripts/matlab_make_fceri_gamma2_ode_benchmarks.m');exit;"

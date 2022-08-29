#!/bin/bash

echo "Starts benchmark runs on the multistate model."
time julia catalyst_make_benchmark.jl multistate Direct 1 5 9
time julia catalyst_make_benchmark.jl multistate SortingDirect 1 5 9
time julia catalyst_make_benchmark.jl multistate RSSA 1 5 9
time julia catalyst_make_benchmark.jl multistate RSSACR 1 5 9

echo "Starts benchmark runs on the multisite2 model."
time julia catalyst_make_benchmark.jl multisite2 Direct 1 5 9
time julia catalyst_make_benchmark.jl multisite2 SortingDirect 1 5 9
time julia catalyst_make_benchmark.jl multisite2 RSSA 1 5 9
time julia catalyst_make_benchmark.jl multisite2 RSSACR 1 5 9

echo "Starts benchmark runs on the egfr_net model."
time julia catalyst_make_benchmark.jl egfr_net Direct 1 2 4
time julia catalyst_make_benchmark.jl egfr_net SortingDirect 1 3 7
time julia catalyst_make_benchmark.jl egfr_net RSSA 1 3 7
time julia catalyst_make_benchmark.jl egfr_net RSSACR 1 3 7

echo "Starts benchmark runs on the BCR model."
time julia catalyst_make_benchmark.jl BCR SortingDirect 4 5 2
time julia catalyst_make_benchmark.jl BCR RSSA 4 5 2
time julia catalyst_make_benchmark.jl BCR RSSACR 4 5 2

echo "Starts benchmark runs on the fceri_gamma2 model."
time julia catalyst_make_benchmark.jl fceri_gamma2 Direct 1 2 4
time julia catalyst_make_benchmark.jl fceri_gamma2 SortingDirect 1 3 7
time julia catalyst_make_benchmark.jl fceri_gamma2 RSSA 1 3 7
time julia catalyst_make_benchmark.jl fceri_gamma2 RSSACR 1 3 7

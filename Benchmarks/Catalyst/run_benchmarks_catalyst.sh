#!/bin/bash

echo "Starts benchmark runs on the multistate model."
time julia catalyst_make_benchmark.jl multistate lsoda 1 5 9
time julia catalyst_make_benchmark.jl multistate CVODE_BDF 1 5 9
time julia catalyst_make_benchmark.jl multistate TRBDF2 1 5 9
time julia catalyst_make_benchmark.jl multistate KenCarp4 1 5 9
time julia catalyst_make_benchmark.jl multistate QNDF 1 5 9
time julia catalyst_make_benchmark.jl multistate FBDF 1 5 9
time julia catalyst_make_benchmark.jl multistate Rosenbrock23 1 5 9
time julia catalyst_make_benchmark.jl multistate CVODE_BDF 1 5 9 jac sparse
time julia catalyst_make_benchmark.jl multistate TRBDF2 1 5 9 jac sparse
time julia catalyst_make_benchmark.jl multistate KenCarp4 1 5 9 jac sparse
time julia catalyst_make_benchmark.jl multistate QNDF 1 5 9 jac sparse
time julia catalyst_make_benchmark.jl multistate FBDF 1 5 9 jac sparse
time julia catalyst_make_benchmark.jl multistate Rosenbrock23 1 5 9 jac sparse
time julia catalyst_make_benchmark.jl multistate Direct 1 5 9
time julia catalyst_make_benchmark.jl multistate SortingDirect 1 5 9
time julia catalyst_make_benchmark.jl multistate RSSA 1 5 9
time julia catalyst_make_benchmark.jl multistate RSSACR 1 5 9

echo "Starts benchmark runs on the multisite2 model."
time julia catalyst_make_benchmark.jl multisite2 lsoda 1 5 9
time julia catalyst_make_benchmark.jl multisite2 CVODE_BDF 1 5 9
time julia catalyst_make_benchmark.jl multisite2 TRBDF2 1 5 9
time julia catalyst_make_benchmark.jl multisite2 KenCarp4 1 5 9
time julia catalyst_make_benchmark.jl multisite2 QNDF 1 5 9
time julia catalyst_make_benchmark.jl multisite2 FBDF 1 5 9
time julia catalyst_make_benchmark.jl multisite2 Rosenbrock23 1 5 9
time julia catalyst_make_benchmark.jl multisite2 CVODE_BDF 1 5 9 jac sparse
time julia catalyst_make_benchmark.jl multisite2 TRBDF2 1 5 9 jac sparse
time julia catalyst_make_benchmark.jl multisite2 KenCarp4 1 5 9 jac sparse
time julia catalyst_make_benchmark.jl multisite2 QNDF 1 5 9 jac sparse
time julia catalyst_make_benchmark.jl multisite2 FBDF 1 5 9 jac sparse
time julia catalyst_make_benchmark.jl multisite2 Rosenbrock23 1 5 9 jac sparse
time julia catalyst_make_benchmark.jl multisite2 Direct 1 5 9
time julia catalyst_make_benchmark.jl multisite2 SortingDirect 1 5 9
time julia catalyst_make_benchmark.jl multisite2 RSSA 1 5 9
time julia catalyst_make_benchmark.jl multisite2 RSSACR 1 5 9

echo "Starts benchmark runs on the egfr_net model."
time julia catalyst_make_benchmark.jl egfr_net lsoda 1 3 7
time julia catalyst_make_benchmark.jl egfr_net CVODE_BDF 1 3 7
#time julia catalyst_make_benchmark.jl egfr_net TRBDF2 1 3 7
#time julia catalyst_make_benchmark.jl egfr_net KenCarp4 1 3 7
#time julia catalyst_make_benchmark.jl egfr_net QNDF 1 3 7
#time julia catalyst_make_benchmark.jl egfr_net FBDF 1 3 7
#time julia catalyst_make_benchmark.jl egfr_net Rosenbrock23 1 3 7
time julia catalyst_make_benchmark.jl egfr_net CVODE_BDF 1 3 7 jac sparse
#time julia catalyst_make_benchmark.jl egfr_net TRBDF2 1 3 7 jac sparse
#time julia catalyst_make_benchmark.jl egfr_net KenCarp4 1 3 7 jac sparse
#time julia catalyst_make_benchmark.jl egfr_net QNDF 1 3 7 jac sparse
#time julia catalyst_make_benchmark.jl egfr_net FBDF 1 3 7 jac sparse
#time julia catalyst_make_benchmark.jl egfr_net Rosenbrock23 1 3 7 jac sparse
#time julia catalyst_make_benchmark.jl egfr_net Direct 1 2 4
#time julia catalyst_make_benchmark.jl egfr_net SortingDirect 1 3 7
#time julia catalyst_make_benchmark.jl egfr_net RSSA 1 3 7
#time julia catalyst_make_benchmark.jl egfr_net RSSACR 1 3 7

echo "Starts benchmark runs on the BCR model."
time julia catalyst_make_benchmark.jl BCR lsoda 1 3 7
time julia catalyst_make_benchmark.jl BCR CVODE_BDF 1 3 7
#time julia catalyst_make_benchmark.jl BCR TRBDF2 1 3 7
#time julia catalyst_make_benchmark.jl BCR KenCarp4 1 3 7
#time julia catalyst_make_benchmark.jl BCR QNDF 1 3 7
#time julia catalyst_make_benchmark.jl BCR FBDF 1 3 7
#time julia catalyst_make_benchmark.jl BCR Rosenbrock23 1 3 7
time julia catalyst_make_benchmark.jl BCR CVODE_BDF 1 3 7 jac sparse
#time julia catalyst_make_benchmark.jl BCR TRBDF2 1 3 7 jac sparse
#time julia catalyst_make_benchmark.jl BCR KenCarp4 1 3 7 jac sparse
#time julia catalyst_make_benchmark.jl BCR QNDF 1 3 7 jac sparse
#time julia catalyst_make_benchmark.jl BCR FBDF 1 3 7 jac sparse
#time julia catalyst_make_benchmark.jl BCR Rosenbrock23 1 3 7 jac sparse
#time julia catalyst_make_benchmark.jl BCR SortingDirect 4 5 2
#time julia catalyst_make_benchmark.jl BCR RSSA 4 5 2
#time julia catalyst_make_benchmark.jl BCR RSSACR 4 5 2

echo "Starts benchmark runs on the fceri_gamma2 model."
time julia catalyst_make_benchmark.jl fceri_gamma2 lsoda 1 3 7
time julia catalyst_make_benchmark.jl fceri_gamma2 CVODE_BDF 1 3 7
#time julia catalyst_make_benchmark.jl fceri_gamma2 TRBDF2 1 3 7
#time julia catalyst_make_benchmark.jl fceri_gamma2 KenCarp4 1 3 7
#time julia catalyst_make_benchmark.jl fceri_gamma2 QNDF 1 3 7
#time julia catalyst_make_benchmark.jl fceri_gamma2 FBDF 1 3 7
#time julia catalyst_make_benchmark.jl fceri_gamma2 Rosenbrock23 1 3 7
time julia catalyst_make_benchmark.jl fceri_gamma2 CVODE_BDF 1 3 7 jac sparse
#time julia catalyst_make_benchmark.jl fceri_gamma2 TRBDF2 1 3 7 jac sparse
#time julia catalyst_make_benchmark.jl fceri_gamma2 KenCarp4 1 3 7 jac sparse
#time julia catalyst_make_benchmark.jl fceri_gamma2 QNDF 1 3 7 jac sparse
#time julia catalyst_make_benchmark.jl fceri_gamma2 FBDF 1 3 7 jac sparse
#time julia catalyst_make_benchmark.jl fceri_gamma2 Rosenbrock23 1 3 7 jac sparse
#time julia catalyst_make_benchmark.jl fceri_gamma2 Direct 1 2 4
#time julia catalyst_make_benchmark.jl fceri_gamma2 SortingDirect 1 3 7
#time julia catalyst_make_benchmark.jl fceri_gamma2 RSSA 1 3 7
#time julia catalyst_make_benchmark.jl fceri_gamma2 RSSACR 1 3 7

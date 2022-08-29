#!/bin/bash

echo "Starts benchmark runs on the multistate model."
time julia catalyst_make_benchmark.jl multistate lsoda 1 5 9 NoLinSolver
time julia catalyst_make_benchmark.jl multistate CVODE_BDF 1 5 9 NoLinSolver
time julia catalyst_make_benchmark.jl multistate CVODE_BDF 1 5 9 LapackDense
time julia catalyst_make_benchmark.jl multistate CVODE_BDF 1 5 9 GMRES
time julia catalyst_make_benchmark.jl multistate CVODE_BDF 1 5 9 LapackDense jac
time julia catalyst_make_benchmark.jl multistate CVODE_BDF 1 5 9 KLU jac sparse

echo "Starts benchmark runs on the multisite2 model."
time julia catalyst_make_benchmark.jl multisite2 lsoda 1 5 9 NoLinSolver
time julia catalyst_make_benchmark.jl multisite2 CVODE_BDF 1 5 9 NoLinSolver
time julia catalyst_make_benchmark.jl multisite2 CVODE_BDF 1 5 9 LapackDense
time julia catalyst_make_benchmark.jl multisite2 CVODE_BDF 1 5 9 GMRES
time julia catalyst_make_benchmark.jl multisite2 CVODE_BDF 1 5 9 LapackDense jac
time julia catalyst_make_benchmark.jl multisite2 CVODE_BDF 1 5 9 KLU jac sparse

echo "Starts benchmark runs on the egfr_net model."
time julia catalyst_make_benchmark.jl egfr_net lsoda 1 3 7 NoLinSolver
time julia catalyst_make_benchmark.jl egfr_net CVODE_BDF 1 3 7 NoLinSolver
time julia catalyst_make_benchmark.jl egfr_net CVODE_BDF 1 3 7 LapackDense
time julia catalyst_make_benchmark.jl egfr_net CVODE_BDF 1 3 7 GMRES
time julia catalyst_make_benchmark.jl egfr_net CVODE_BDF 1 3 7 LapackDense jac
time julia catalyst_make_benchmark.jl egfr_net CVODE_BDF 1 3 7 KLU jac sparse

echo "Starts benchmark runs on the BCR model."
time julia catalyst_make_benchmark.jl BCR lsoda 1 3 7 NoLinSolver
time julia catalyst_make_benchmark.jl BCR CVODE_BDF 1 3 7 NoLinSolver
time julia catalyst_make_benchmark.jl BCR CVODE_BDF 1 3 7 LapackDense
time julia catalyst_make_benchmark.jl BCR CVODE_BDF 1 3 7 GMRES
# time julia catalyst_make_benchmark.jl BCR CVODE_BDF 1 3 7 LapackDense jac    # (Fails due to generation of too large an expression)
time julia catalyst_make_benchmark.jl BCR CVODE_BDF 1 3 7 KLU jac sparse

echo "Starts benchmark runs on the fceri_gamma2 model."
time julia catalyst_make_benchmark.jl fceri_gamma2 lsoda 1 3 7 NoLinSolver
time julia catalyst_make_benchmark.jl fceri_gamma2 CVODE_BDF 1 3 7 NoLinSolver
time julia catalyst_make_benchmark.jl fceri_gamma2 CVODE_BDF 1 3 7 LapackDense
time julia catalyst_make_benchmark.jl fceri_gamma2 CVODE_BDF 1 3 7 GMRES
#time julia catalyst_make_benchmark.jl fceri_gamma2 CVODE_BDF 1 3 7 LapackDense jac    # (Fails due to generation of too large an expression)
time julia catalyst_make_benchmark.jl fceri_gamma2 CVODE_BDF 1 3 7 KLU jac sparse

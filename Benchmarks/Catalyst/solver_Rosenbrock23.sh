#time julia catalyst_make_benchmark.jl multistate Rosenbrock23 1 5 9 NoLinSolver
#time julia catalyst_make_benchmark.jl multistate Rosenbrock23 1 5 9 NoLinSolver jac
#time julia catalyst_make_benchmark.jl multistate Rosenbrock23 1 5 9 KLUFactorization jac sparse

time julia catalyst_make_benchmark.jl multisite2 Rosenbrock23 1 5 9 RFLUFactorization
time julia catalyst_make_benchmark.jl multisite2 Rosenbrock23 1 5 9 RFLUFactorization jac
#time julia catalyst_make_benchmark.jl multisite2 Rosenbrock23 1 5 9 KLUFactorization jac sparse

time julia catalyst_make_benchmark.jl egfr_net Rosenbrock23 1 3 7 RFLUFactorization
time julia catalyst_make_benchmark.jl egfr_net Rosenbrock23 1 3 7 RFLUFactorization jac
#time julia catalyst_make_benchmark.jl egfr_net Rosenbrock23 1 3 7 KLUFactorization jac sparse

time julia catalyst_make_benchmark.jl BCR Rosenbrock23 1 3 7 RFLUFactorization
time julia catalyst_make_benchmark.jl BCR Rosenbrock23 1 3 7 RFLUFactorization jac
#time julia catalyst_make_benchmark.jl BCR Rosenbrock23 1 3 7 KLUFactorization jac sparse

time julia catalyst_make_benchmark.jl fceri_gamma2 Rosenbrock23 1 3 7 RFLUFactorization
time julia catalyst_make_benchmark.jl fceri_gamma2 Rosenbrock23 1 3 7 RFLUFactorization jac
#time julia catalyst_make_benchmark.jl fceri_gamma2 Rosenbrock23 1 3 7 KLUFactorization jac sparse
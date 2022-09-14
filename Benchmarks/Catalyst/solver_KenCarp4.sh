#time julia catalyst_make_benchmark.jl multistate KenCarp4 1 5 9 NoLinSolver
#time julia catalyst_make_benchmark.jl multistate KenCarp4 1 5 9 NoLinSolver jac
#time julia catalyst_make_benchmark.jl multistate KenCarp4 1 5 9 KLUFactorization jac sparse

time julia catalyst_make_benchmark.jl multisite2 KenCarp4 1 5 9 RFLUFactorization
time julia catalyst_make_benchmark.jl multisite2 KenCarp4 1 5 9 RFLUFactorization jac
#time julia catalyst_make_benchmark.jl multisite2 KenCarp4 1 5 9 KLUFactorization jac sparse

time julia catalyst_make_benchmark.jl egfr_net KenCarp4 1 3 7 RFLUFactorization
time julia catalyst_make_benchmark.jl egfr_net KenCarp4 1 3 7 RFLUFactorization jac
#time julia catalyst_make_benchmark.jl egfr_net KenCarp4 1 3 7 KLUFactorization jac sparse

time julia catalyst_make_benchmark.jl BCR KenCarp4 1 3 7 RFLUFactorization
time julia catalyst_make_benchmark.jl BCR KenCarp4 1 3 7 RFLUFactorization jac
#time julia catalyst_make_benchmark.jl BCR KenCarp4 1 3 7 KLUFactorization jac sparse

time julia catalyst_make_benchmark.jl fceri_gamma2 KenCarp4 1 3 7 RFLUFactorization
time julia catalyst_make_benchmark.jl fceri_gamma2 KenCarp4 1 3 7 RFLUFactorization jac
#time julia catalyst_make_benchmark.jl fceri_gamma2 KenCarp4 1 3 7 KLUFactorization jac sparse
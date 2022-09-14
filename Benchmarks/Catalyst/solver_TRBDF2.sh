#time julia catalyst_make_benchmark.jl multistate TRBDF2 1 5 9 NoLinSolver
#time julia catalyst_make_benchmark.jl multistate TRBDF2 1 5 9 NoLinSolver jac
#time julia catalyst_make_benchmark.jl multistate TRBDF2 1 5 9 KLUFactorization jac sparse

time julia catalyst_make_benchmark.jl multisite2 TRBDF2 1 5 9 RFLUFactorization
time julia catalyst_make_benchmark.jl multisite2 TRBDF2 1 5 9 RFLUFactorization jac
#time julia catalyst_make_benchmark.jl multisite2 TRBDF2 1 5 9 KLUFactorization jac sparse

time julia catalyst_make_benchmark.jl egfr_net TRBDF2 1 3 7 RFLUFactorization
time julia catalyst_make_benchmark.jl egfr_net TRBDF2 1 3 7 RFLUFactorization jac
#time julia catalyst_make_benchmark.jl egfr_net TRBDF2 1 3 7 KLUFactorization jac sparse

time julia catalyst_make_benchmark.jl BCR TRBDF2 1 3 7 RFLUFactorization
time julia catalyst_make_benchmark.jl BCR TRBDF2 1 3 7 RFLUFactorization jac
#time julia catalyst_make_benchmark.jl BCR TRBDF2 1 3 7 KLUFactorization jac sparse

time julia catalyst_make_benchmark.jl fceri_gamma2 TRBDF2 1 3 7 RFLUFactorization
time julia catalyst_make_benchmark.jl fceri_gamma2 TRBDF2 1 3 7 RFLUFactorization jac
#time julia catalyst_make_benchmark.jl fceri_gamma2 TRBDF2 1 3 7 KLUFactorization jac sparse
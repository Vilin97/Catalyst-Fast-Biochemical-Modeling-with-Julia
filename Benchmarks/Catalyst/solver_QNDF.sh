#time julia catalyst_make_benchmark.jl multistate QNDF 1 5 9 NoLinSolver
#time julia catalyst_make_benchmark.jl multistate QNDF 1 5 9 NoLinSolver jac
#time julia catalyst_make_benchmark.jl multistate QNDF 1 5 9 KLUFactorization jac sparse

time julia catalyst_make_benchmark.jl multisite2 QNDF 1 5 9 RFLUFactorization
time julia catalyst_make_benchmark.jl multisite2 QNDF 1 5 9 RFLUFactorization jac
#time julia catalyst_make_benchmark.jl multisite2 QNDF 1 5 9 KLUFactorization jac sparse

time julia catalyst_make_benchmark.jl egfr_net QNDF 1 3 7 RFLUFactorization
time julia catalyst_make_benchmark.jl egfr_net QNDF 1 3 7 RFLUFactorization jac
#time julia catalyst_make_benchmark.jl egfr_net QNDF 1 3 7 KLUFactorization jac sparse

time julia catalyst_make_benchmark.jl BCR QNDF 1 3 7 RFLUFactorization
time julia catalyst_make_benchmark.jl BCR QNDF 1 3 7 RFLUFactorization jac
#time julia catalyst_make_benchmark.jl BCR QNDF 1 3 7 KLUFactorization jac sparse

time julia catalyst_make_benchmark.jl fceri_gamma2 QNDF 1 3 7 RFLUFactorization
time julia catalyst_make_benchmark.jl fceri_gamma2 QNDF 1 3 7 RFLUFactorization jac
#time julia catalyst_make_benchmark.jl fceri_gamma2 QNDF 1 3 7 KLUFactorization jac sparse
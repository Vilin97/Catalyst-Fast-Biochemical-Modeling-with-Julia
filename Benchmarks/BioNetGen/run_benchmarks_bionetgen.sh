#!/bin/bash

echo "Starts benchmark runs on the multistate model."
time python bionetgen_make_benchmarks.py multistate \"ode\" 1 5 9 10
time python bionetgen_make_benchmarks.py multistate \"ode\" 1 5 9 10 sparse
time python bionetgen_make_benchmarks.py multistate \"ssa\" 1 5 9 10

echo "Starts benchmark runs on the multisite2 model."
time python bionetgen_make_benchmarks.py multisite2 \"ode\" 1 4 7 10
time python bionetgen_make_benchmarks.py multisite2 \"ode\" 1 4 7 10 sparse
time python bionetgen_make_benchmarks.py multisite2 \"ssa\" 1 4 7 10

echo "Starts benchmark runs on the egfr_net model."
time python bionetgen_make_benchmarks.py egfr_net \"ode\" 1 3 7 10
time python bionetgen_make_benchmarks.py egfr_net \"ode\" 1 3 7 10 sparse
time python bionetgen_make_benchmarks.py egfr_net \"ssa\" 1 3 7 10

echo "Starts benchmark runs on the BCR model."
time python bionetgen_make_benchmarks.py BCR \"ode\" 1 3 7 10
time python bionetgen_make_benchmarks.py BCR \"ode\" 1 3 7 10 sparse
time python bionetgen_make_benchmarks.py BCR \"ssa\" 4 5 2 3

echo "Starts benchmark runs on the fceri_gamma2 model."
time python bionetgen_make_benchmarks.py fceri_gamma2 \"ode\" 1 3 7 10
time python bionetgen_make_benchmarks.py fceri_gamma2 \"ode\" 1 3 7 10 sparse
time python bionetgen_make_benchmarks.py fceri_gamma2 \"ssa\" 1 3 7 10

#!/bin/bash

echo "Starts benchmark runs on the multistate model."
time python copasi_make_benchmarks.py multistate deterministic 1 5 9 10
time python copasi_make_benchmarks.py multistate directMethod 1 5 9 10

echo "Starts benchmark runs on the multisite2 model."
time python copasi_make_benchmarks.py multisite2 deterministic 1 4 7 10
time python copasi_make_benchmarks.py multisite2 directMethod 1 4 7 10

echo "Starts benchmark runs on the egfr_net model."
time python copasi_make_benchmarks.py egfr_net deterministic 1 3 7 10
time python copasi_make_benchmarks.py egfr_net directMethod 1 2 4 10

echo "Starts benchmark runs on the BCR model."
time python copasi_make_benchmarks.py BCR deterministic 1 2 4 10

echo "Starts benchmark runs on the fceri_gamma2 model."
time python copasi_make_benchmarks.py fceri_gamma2 deterministic 1 2 4 10
time python copasi_make_benchmarks.py fceri_gamma2 directMethod 1 2 4 10

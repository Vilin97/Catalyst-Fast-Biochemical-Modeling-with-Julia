#!/bin/bash

echo "Starts benchmark runs on the multistate model."
time python gillespy2_make_benchmarks.py multistate lsoda 1 5 9 10
time python gillespy2_make_benchmarks.py multistate ssa 1 5 9 10

echo "Starts benchmark runs on the multisite2 model."
time python gillespy2_make_benchmarks.py multisite2 lsoda 1 4 7 10
time python gillespy2_make_benchmarks.py multisite2 ssa 1 4 7 10

echo "Starts benchmark runs on the egfr_net model."
time python gillespy2_make_benchmarks.py egfr_net lsoda 1 2 4 10
time python gillespy2_make_benchmarks.py egfr_net ssa 1 2 4 10

echo "Starts benchmark runs on the BCR model."
time python gillespy2_make_benchmarks.py BCR lsoda 1 2 4 10

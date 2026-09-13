#!/bin/bash

sudo sysctl kernel.perf_event_paranoid=-1

# Arguments:
# $1: OMP_NUM_THREADS
# $2: Arguments for ./run
# $3: Value for -i
# $4: Output directory path
# $5: Number of iterations

for ((i=1; i<=$5; i++))
do
    output_file="$4/profiling_${i}.txt"
    OMP_NUM_THREADS=$1 perf stat -i ./run $2 &> "$output_file"
done

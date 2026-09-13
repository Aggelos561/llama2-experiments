#!/usr/bin/env bash

# Usage: ./run_thread_scaling.sh

set -euo pipefail

cd ..

TARGET="cblasopenmp"
OMP_THREAD_COUNTS=(1 2 4 6 8 10 12 14)
CBLAS_THREAD_COUNTS=(1 2 4 6 8 10 12 14)
MAX_THREADS=16
NRUNS=10
MODEL="./models/stories110M.bin"
COMMON_ARGS="-t 0 -s 42"
BASE_DIR="./trials-threads_110M-Model/combinations/$TARGET"
EXE="./run"
ARGS="$MODEL $COMMON_ARGS"

make "$TARGET"

for omp_threads in "${OMP_THREAD_COUNTS[@]}"; do
    for blas_threads in "${CBLAS_THREAD_COUNTS[@]}"; do
        total_threads=$((omp_threads + blas_threads))
        if [ "$total_threads" -le "$MAX_THREADS" ]; then
            THREAD_DIR="$BASE_DIR/omp_${omp_threads}_blas_${blas_threads}"
            mkdir -p "$THREAD_DIR"

            for i in $(seq 1 $NRUNS); do
                OUT_FILE="$THREAD_DIR/run_${i}.txt"
                echo "Running with OMP_NUM_THREADS=$omp_threads and OPENBLAS_NUM_THREADS=$blas_threads (run $i)..."
                OMP_NUM_THREADS="$omp_threads" OPENBLAS_NUM_THREADS="$blas_threads" $EXE $ARGS > "$OUT_FILE" 2>&1
            done
        fi
    done
done

echo "All valid OpenMP + CBLAS thread-scaled runs (<= $MAX_THREADS total) completed and saved in $BASE_DIR/"

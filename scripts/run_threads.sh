#!/usr/bin/env bash

# Example: ./run_threads.sh openmp

# change OMP_NUM_THREADS | OPENBLAS_NUM_THREADS in script

set -euo pipefail

cd ..

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <compilation_setup_name>"
    exit 1
fi

TARGET="$1"
THREAD_COUNTS=(1 2 4 6 8 10 12 14 16)
NRUNS=10
MODEL="./models/stories110M.bin"
COMMON_ARGS="-t 0 -s 42"
BASE_DIR="./temp/$TARGET"

make "$TARGET"

case "$TARGET" in
    run|bmatopenmp|cblas|cblasopenmp|openmp|avx|avx256|avxopenmp256|avxopenmp512)
        EXE="./run"
        ;;
    run_rocm)
        EXE="./run_rocm"
        ;;
    run_cuda)
        EXE="./run_cuda"
        ;;
    *)
        echo "Unknown target: $TARGET"
        exit 1
        ;;
esac

ARGS="$MODEL $COMMON_ARGS"

for threads in "${THREAD_COUNTS[@]}"; do
    THREAD_DIR="$BASE_DIR/$threads"
    mkdir -p "$THREAD_DIR"

    for i in $(seq 1 $NRUNS); do
        OUT_FILE="$THREAD_DIR/run_${i}.txt"
        echo "Running $TARGET with OMP_NUM_THREADS=$threads (run $i)..."
        OMP_NUM_THREADS="$threads" $EXE $ARGS > "$OUT_FILE" 2>&1
    done
done

echo "All thread-scaled runs completed and saved in $BASE_DIR"

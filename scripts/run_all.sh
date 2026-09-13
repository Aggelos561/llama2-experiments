#!/usr/bin/env bash

set -euo pipefail

cd ..

TARGETS=(
    run
    cblas
    avx
    avx256
    avx512
    run_rocm
    run_cuda
)

MODEL="./models/stories110M.bin"
COMMON_ARGS="-t 0 -s 42"

NRUNS=10

BASE_DIR="./trials"
mkdir -p "$BASE_DIR"

for target in "${TARGETS[@]}"; do
    echo "Building: $target"
    make "$target"

    TARGET_DIR="$BASE_DIR/$target"
    mkdir -p "$TARGET_DIR"

    for i in $(seq 1 $NRUNS); do
        echo "Running $target (trial $i)..."

        case "$target" in
            run|cblas|avx|avx256|avx512)
                EXE="./run"
                ;;
            run_rocm)
                EXE="./run_rocm"
                ;;
            run_cuda)
                EXE="./run_cuda"
                ;;
            *)
                echo "Unknown target: $target"
                continue
                ;;
        esac

        ARGS="$MODEL $COMMON_ARGS"
        OUT_FILE="$TARGET_DIR/run_${i}.txt"

        case "$target" in
            bmatopenmp|cblasopenmp|openmp|avxopenmp256|avxopenmp512)
                OMP_NUM_THREADS=8 "$EXE" $ARGS > "$OUT_FILE" 2>&1
                ;;
            *)
                "$EXE" $ARGS > "$OUT_FILE" 2>&1
                ;;
        esac
    done
done

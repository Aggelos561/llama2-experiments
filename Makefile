# choose your compiler, e.g. gcc/clang
# example override to clang: make run CC=clang
CC = gcc

# the most basic way of building that is most likely to work on most systems
.PHONY: run
run: run.c
	$(CC) -march=native -O3 -o run run.c -lm
	$(CC) -march=native -O3 -o runq runq.c -lm

.PHONY: bmatopenmp
bmatopenmp: run.c
	$(CC) -march=native -fopenmp -O3 -D_BMAT -o run run.c -lm
	$(CC) -march=native -fopenmp -O3 -D_BMAT -o runq runq.c -lm

.PHONY: cblas
cblas: run.c
	$(CC) -march=native -O3 -D_CBLAS -o run run.c -lm -lopenblas
	$(CC) -march=native -O3 -D_CBLAS -o runq runq.c -lm -lopenblas

.PHONY: cblasopenmp
cblasopenmp: run.c
	$(CC) -march=native -O3 -D_CBLAS -fopenmp -o run run.c -lm -lopenblas
	$(CC) -march=native -O3 -D_CBLAS -fopenmp -o runq runq.c -lm -lopenblas

.PHONY: openmp
openmp: run.c
	$(CC) -march=native -O3 -fopenmp -o run run.c -lm
	$(CC) -march=native -O3 -fopenmp -o runq runq.c -lm

.PHONY: avx
avx: run.c
	$(CC) -march=native -mavx -O3 -o run run.c -lm
	$(CC) -march=native -mavx -O3 -o runq runq.c -lm

.PHONY: avx256
avx256: run.c
	$(CC) -march=native -O3 -mavx -D_AVX256 -o run run.c -lm
	$(CC) -march=native -O3 -mavx -D_AVX256 -o runq runq.c -lm

.PHONY: avx512
avx512: run.c
	$(CC) -march=native -O3 -mavx512f -D_AVX512 -o run run.c -lm
	$(CC) -march=native -O3 -mavx512f -D_AVX512 -o runq runq.c -lm

.PHONY: avxopenmp256
avxopenmp256: run.c
	$(CC) -march=native -O3 -mavx -D_AVX256 -fopenmp -o run run.c -lm
	$(CC) -march=native -O3 -mavx -D_AVX256 -fopenmp -o runq runq.c -lm

.PHONY: avxopenmp512
avxopenmp512: run.c
	$(CC) -march=native -O3 -mavx512f -D_AVX512 -fopenmp -o run run.c -lm
	$(CC) -march=native -O3 -mavx512f -D_AVX512 -fopenmp -o runq runq.c -lm

.PHONY: run_rocm
run_rocm: run_rocm.cpp
	hipcc -march=native -O3 --offload-arch=gfx1100 -o run_rocm run_rocm.cpp -lm -lrocblas 

.PHONY: run_cuda
run_cuda: run_cuda.cu
	nvcc -DUSE_CUDA -march=native -O3 -arch=sm_70 -o run_cuda run_cuda.cu -lm -lcublas


# useful for a debug build, can then e.g. analyze with valgrind, example:
# $ valgrind --leak-check=full ./run out/model.bin -n 3
rundebug: run.c
	$(CC) -g -o run run.c -lm
	$(CC) -g -o runq runq.c -lm

# https://gcc.gnu.org/onlinedocs/gcc/Optimize-Options.html
# https://simonbyrne.github.io/notes/fastmath/
# -Ofast enables all -O3 optimizations.
# Disregards strict standards compliance.
# It also enables optimizations that are not valid for all standard-compliant programs.
# It turns on -ffast-math, -fallow-store-data-races and the Fortran-specific
# -fstack-arrays, unless -fmax-stack-var-size is specified, and -fno-protect-parens.
# It turns off -fsemantic-interposition.
# In our specific application this is *probably* okay to use
.PHONY: runfast
runfast: run.c
	$(CC) -Ofast -o run run.c -lm
	$(CC) -Ofast -o runq runq.c -lm

# additionally compiles with OpenMP, allowing multithreaded runs
# make sure to also enable multiple threads when running, e.g.:
# OMP_NUM_THREADS=4 ./run out/model.bin
.PHONY: runomp
runomp: run.c
	$(CC) -Ofast -fopenmp -march=native run.c  -lm  -o run
	$(CC) -Ofast -fopenmp -march=native runq.c  -lm  -o runq

.PHONY: win64
win64:
	x86_64-w64-mingw32-gcc -Ofast -D_WIN32 -o run.exe -I. run.c win.c
	x86_64-w64-mingw32-gcc -Ofast -D_WIN32 -o runq.exe -I. runq.c win.c

# compiles with gnu99 standard flags for amazon linux, coreos, etc. compatibility
.PHONY: rungnu
rungnu:
	$(CC) -Ofast -std=gnu11 -o run run.c -lm
	$(CC) -Ofast -std=gnu11 -o runq runq.c -lm

.PHONY: runompgnu
runompgnu:
	$(CC) -Ofast -fopenmp -std=gnu11 run.c  -lm  -o run
	$(CC) -Ofast -fopenmp -std=gnu11 runq.c  -lm  -o runq

# run all tests
.PHONY: test
test:
	pytest

# run only tests for run.c C implementation (is a bit faster if only C code changed)
.PHONY: testc
testc:
	pytest -k runc

# run the C tests, without touching pytest / python
# to increase verbosity level run e.g. as `make testcc VERBOSITY=1`
VERBOSITY ?= 0
.PHONY: testcc
testcc:
	$(CC) -DVERBOSITY=$(VERBOSITY) -O3 -o testc test.c -lm
	./testc

.PHONY: clean
clean:
	rm -f run
	rm -f runq
	rm -f run_rocm
	rm -f run_cuda

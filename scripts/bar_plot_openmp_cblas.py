import os
import re
import numpy as np
import matplotlib.pyplot as plt
from collections import defaultdict

BASE_DIR = "../trials-threads_110M-Model/combinations/cblasopenmp"
PLOT_DIR = "./Plots"
PLOT_PATH = os.path.join(PLOT_DIR, "scaling_plot.pdf")
elapsed_pattern = re.compile(r"Elapsed time:\s*([0-9.]+)\s*seconds")

os.makedirs(PLOT_DIR, exist_ok=True)

results = defaultdict(list)

for config_dir in os.listdir(BASE_DIR):
    if not config_dir.startswith("omp_"):
        continue

    try:
        omp_threads = int(config_dir.split("_")[1])
        blas_threads = int(config_dir.split("_")[3])
    except (IndexError, ValueError):
        continue

    config_path = os.path.join(BASE_DIR, config_dir)
    for fname in os.listdir(config_path):
        if fname.endswith(".txt"):
            with open(os.path.join(config_path, fname), "r") as f:
                content = f.read()
            match = elapsed_pattern.search(content)
            if match:
                elapsed = float(match.group(1))
                results[(omp_threads, blas_threads)].append(elapsed)

omp_values = sorted(set(omp for omp, _ in results))
blas_values = sorted(set(blas for _, blas in results))

heatmap = np.full((len(omp_values), len(blas_values)), np.nan)

for (omp, blas), times in results.items():
    avg = np.mean(times)
    i = omp_values.index(omp)
    j = blas_values.index(blas)
    heatmap[i, j] = avg

fig, ax = plt.subplots(figsize=(10, 7))
cmap = plt.cm.viridis_r
im = ax.imshow(heatmap, cmap=cmap)

for i in range(len(omp_values)):
    for j in range(len(blas_values)):
        val = heatmap[i, j]
        if not np.isnan(val):
            ax.text(j, i, f"{val:.2f}", ha="center", va="center", color="white" if val > np.nanmean(heatmap) else "black")

ax.set_xticks(np.arange(len(blas_values)))
ax.set_yticks(np.arange(len(omp_values)))
ax.set_xticklabels(blas_values)
ax.set_yticklabels(omp_values)
ax.set_xlabel("OPENBLAS_NUM_THREADS")
ax.set_ylabel("OMP_NUM_THREADS")
ax.set_title("Average Elapsed Time (seconds)\nOMP + OpenBLAS Thread Combinations")

cbar = plt.colorbar(im)
cbar.set_label("Elapsed Time (seconds)")

plt.tight_layout()
plt.savefig(PLOT_PATH, format="pdf")
print(f"Plot saved as: {PLOT_PATH}")
plt.show()

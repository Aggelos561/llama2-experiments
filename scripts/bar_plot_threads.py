import csv
import matplotlib.pyplot as plt
import numpy as np

csv_file = './CSVs/xeon_thread_scaling_results.csv'
raw_setups = []
thread_counts = [1, 2, 4, 6, 8, 10, 12, 14, 16]
data = {}

with open(csv_file, newline='') as f:
    reader = csv.DictReader(f)
    for row in reader:
        key = row['Setup']
        raw_setups.append(key)
        data[key] = {}
        for t in thread_counts:
            val = row.get(str(t), '')
            data[key][t] = float(val) if val else 0.0

label_map = {
    'openmp_only':       'OpenMP only',
    'avx256_openmp':     'AVX256 & OpenMP',
    'blockmat_openmp':   'Block Matrix Mul & OpenMP',
    'openblas_openmp':   'OpenBLAS & OpenMP',
}

ordered_keys = ['openmp_only', 'avx256_openmp', 'blockmat_openmp', 'openblas_openmp']
setups = [k for k in ordered_keys if k in raw_setups]

if not setups:
    setups = raw_setups
    label_map = {k: k for k in raw_setups}

n_setups = len(setups)
indices = np.arange(n_setups)
bar_width = 0.8 / len(thread_counts)
cap_value = 20.0

fig, ax = plt.subplots(figsize=(14, 6))
cmap = plt.get_cmap('tab10')
thread_colors = {t: cmap(i) for i, t in enumerate(thread_counts)}

for idx, t in enumerate(thread_counts):
    raw_vals = [data[s][t] for s in setups]
    capped_vals = [min(v, cap_value) for v in raw_vals]
    xpos = indices - 0.4 + idx * bar_width + bar_width / 2
    bars = ax.bar(xpos, capped_vals, width=bar_width, color=thread_colors[t])

    for bar, orig in zip(bars, raw_vals):
        if orig > cap_value:
            y, va = cap_value - 0.5, 'top'
        else:
            y, va = bar.get_height() + 0.5, 'bottom'
        ax.text(
            bar.get_x() + bar.get_width() / 2,
            y,
            f"{orig:.1f}",
            ha='center',
            va=va,
            rotation=90,
            fontsize=8
        )

ax.set_ylabel("Elapsed Time (s)", fontsize=12)
ax.set_title("Threads Performance Evaluation", fontsize=14)
ax.set_xticks(indices)
ax.set_xticklabels([label_map.get(k, k) for k in setups], rotation=0, ha='center', fontsize=10)
ax.set_ylim(0, cap_value + 2)
ax.grid(axis='y', linestyle='--', alpha=0.7)

legend_patches = [
    plt.Line2D([0], [0], color=thread_colors[t], lw=8)
    for t in thread_counts
]
ax.legend(
    legend_patches,
    [f"{t} threads" for t in thread_counts],
    title="Thread Count",
    loc='upper left',
    frameon=False
)

plt.tight_layout()
plt.savefig('threads-evaluation.pdf', format='pdf', dpi=300)
plt.show()

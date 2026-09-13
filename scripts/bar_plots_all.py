import csv
import matplotlib.pyplot as plt
import numpy as np

csv_file = './CSVs/results_all.csv'
categories = []
avg_tokps = []
avg_ttft = []
avg_elapsed = []

with open(csv_file, newline='') as f:
    reader = csv.DictReader(f)
    for row in reader:
        categories.append(row['Setup'])
        avg_tokps.append(float(row['Avg tok/s']))
        avg_ttft.append(float(row['Avg ttft (ms)']))
        avg_elapsed.append(float(row['Avg elapsed (s)']))

cmap = plt.get_cmap('tab10')
colors = [cmap(i % 10) for i in range(len(categories))]
x_pos = np.arange(len(categories))

def make_plot(values, ylabel, title, filename):
    fig, ax = plt.subplots(figsize=(12, 5))
    bars = ax.bar(x_pos, values, color=colors)

    max_val = max(values)
    ylim = max_val * 1.15
    ax.set_ylim(0, ylim)

    for i, bar in enumerate(bars):
        height = bar.get_height()
        offset = ylim * 0.01
        ax.text(
            bar.get_x() + bar.get_width() / 2,
            height + offset,
            f"{values[i]:.2f}",
            ha='center',
            va='bottom',
            rotation=90,
            fontsize=8
        )

    ax.set_xticks(x_pos)
    ax.set_xticklabels(categories, rotation=45, ha='right')
    ax.set_ylabel(ylabel, fontsize=12)
    ax.set_title(title, fontsize=14)
    ax.grid(axis='y', linestyle='--', alpha=0.6)
    plt.tight_layout()
    plt.savefig(filename, format='pdf', dpi=300)
    plt.show()

make_plot(avg_tokps, "Average Tokens per Second", "Token Throughput per Setup", "avg_tokps.pdf")
make_plot(avg_ttft, "Avg Time to First Token (ms)", "TTFT per Setup", "avg_ttft.pdf")
make_plot(avg_elapsed, "Avg Elapsed Time (s)", "Elapsed Time per Setup", "avg_elapsed.pdf")

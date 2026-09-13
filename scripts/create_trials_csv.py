import os
import re
import csv
from statistics import mean

TRIALS_DIR = "../trials_110M-Model"
OUTPUT_CSV = "./CSVs/results_all.csv"

TOKS_PATTERN = re.compile(r"achieved tok/s:\s*([0-9.]+)")
TTFT_PATTERN = re.compile(r"ttft:\s*([0-9.]+)\s*ms")
ELAPSED_PATTERN = re.compile(r"Elapsed time:\s*([0-9.]+)\s*seconds")

results = []

for setup in sorted(os.listdir(TRIALS_DIR)):
    setup_path = os.path.join(TRIALS_DIR, setup)
    if not os.path.isdir(setup_path):
        continue

    toks_list = []
    ttft_list = []
    elapsed_list = []

    for file in sorted(os.listdir(setup_path)):
        if not file.endswith(".txt"):
            continue

        with open(os.path.join(setup_path, file), "r") as f:
            content = f.read()

            toks_match = TOKS_PATTERN.search(content)
            ttft_match = TTFT_PATTERN.search(content)
            elapsed_match = ELAPSED_PATTERN.search(content)

            if toks_match and ttft_match and elapsed_match:
                toks_list.append(float(toks_match.group(1)))
                ttft_list.append(float(ttft_match.group(1)))
                elapsed_list.append(float(elapsed_match.group(1)))
            else:
                print(f"Warning: Missing data in {file} of {setup}")

    if toks_list and ttft_list and elapsed_list:
        results.append({
            "Setup": setup,
            "Avg tok/s": round(mean(toks_list), 3),
            "Avg ttft (ms)": round(mean(ttft_list), 3),
            "Avg elapsed (s)": round(mean(elapsed_list), 3),
            "Runs counted": len(toks_list)
        })

with open(OUTPUT_CSV, "w", newline="") as csvfile:
    fieldnames = ["Setup", "Avg tok/s", "Avg ttft (ms)", "Avg elapsed (s)", "Runs counted"]
    writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
    writer.writeheader()
    writer.writerows(results)

print(f"Results written to {OUTPUT_CSV}")

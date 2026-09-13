import os
import re
import csv
from statistics import mean

BASE_DIR = "../trials-threads_110M-Model/other"
OUTPUT_CSV = "./CSVs/thread_scaling_results.csv"

THREAD_COUNTS = [1, 2, 4, 6, 8, 10, 12, 14, 16]
ELAPSED_PATTERN = re.compile(r"Elapsed time:\s*([0-9.]+)\s*seconds")

results = []

for setup in sorted(os.listdir(BASE_DIR)):
    setup_path = os.path.join(BASE_DIR, setup)
    if not os.path.isdir(setup_path):
        continue

    row = {"Setup": setup}

    for threads in THREAD_COUNTS:
        thread_dir = os.path.join(setup_path, str(threads))
        if not os.path.isdir(thread_dir):
            row[str(threads)] = ""
            continue

        elapsed_list = []

        for file in os.listdir(thread_dir):
            if not file.endswith(".txt"):
                continue

            with open(os.path.join(thread_dir, file), "r") as f:
                content = f.read()
                match = ELAPSED_PATTERN.search(content)
                if match:
                    elapsed_list.append(float(match.group(1)))

        if elapsed_list:
            row[str(threads)] = round(mean(elapsed_list), 3)
        else:
            row[str(threads)] = ""

    results.append(row)

with open(OUTPUT_CSV, "w", newline="") as csvfile:
    fieldnames = ["Setup"] + [str(t) for t in THREAD_COUNTS]
    writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
    writer.writeheader()
    writer.writerows(results)

print(f"Thread scaling results saved to {OUTPUT_CSV}")

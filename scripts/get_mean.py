import os
import re
from statistics import mean

output_dir = "./perf-events/"

tok_s_pattern = re.compile(r"achieved tok/s:\s+([\d.]+)")
elapsed_time_pattern = re.compile(r"([\d.]+)\s+seconds time elapsed")
ttft_pattern = re.compile(r"TTFT:\s+(\d+)\s+ms", re.IGNORECASE)

tok_s_values = []
elapsed_time_values = []
ttft_values = []

for filename in os.listdir(output_dir):
    if filename.startswith("profiling_") and filename.endswith(".txt"):
        filepath = os.path.join(output_dir, filename)
        
        with open(filepath, 'r') as file:
            content = file.read()
            tok_s_match = tok_s_pattern.search(content)
            elapsed_match = elapsed_time_pattern.search(content)
            ttft_match = ttft_pattern.search(content)

            if tok_s_match:
                tok_s_values.append(float(tok_s_match.group(1)))
            if elapsed_match:
                elapsed_time_values.append(float(elapsed_match.group(1)))
            if ttft_match:
                ttft_values.append(int(ttft_match.group(1)))
            
            if not (tok_s_match and elapsed_match and ttft_match):
                print(f"Warning: Missing data in {filename}")


if tok_s_values:
    print(f"Average achieved tok/s: {mean(tok_s_values):.6f}")
else:
    print("No valid tok/s data found.")

if elapsed_time_values:
    print(f"Average elapsed time: {mean(elapsed_time_values):.6f} seconds")
else:
    print("No valid elapsed time data found.")

if ttft_values:
    print(f"Average TTFT: {mean(ttft_values):.2f} ms")
else:
    print("No valid TTFT data found.")

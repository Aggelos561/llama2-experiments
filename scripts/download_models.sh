#!/bin/bash

mkdir -p ../models

cd ../models

wget https://huggingface.co/karpathy/tinyllamas/resolve/main/stories260K.bin
wget https://huggingface.co/karpathy/tinyllamas/resolve/main/stories15M.bin
wget https://huggingface.co/karpathy/tinyllamas/resolve/main/stories42M.bin
wget https://huggingface.co/karpathy/tinyllamas/resolve/main/stories110M.bin

#! /bin/bash
llama-server \
    -hf unsloth/Qwen3-Coder-30B-A3B-Instruct-GGUF:Q4_K_XL \
    --alias qwen3-coder-30b-instruct \
    --jinja -ngl 99 --threads -1 --ctx-size 262144 \
    --temp 0.7 --min-p 0.0 --top-p 0.80 --top-k 20 --repeat-penalty 1.05 \
    --port 10001

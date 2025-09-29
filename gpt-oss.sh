#! /bin/bash
llama-server \
    -hf unsloth/gpt-oss-120b-GGUF:F16 \
    --alias gpt-oss-120b \
    --jinja \
    --threads -1 \
    --ctx-size 131072 \
    --n-gpu-layers 99 \
    -ot ".ffn_.*_exps.=CPU" \
    --temp 1.0 \
    --min-p 0.0 \
    --top-p 1.0 \
    --top-k 0.0 \
    --port 10002
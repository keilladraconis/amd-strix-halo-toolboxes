#! /bin/bash
llama-server \
    -hf unsloth/GLM-4.5-Air-GGUF:UD-Q6_K_XL \
    --alias glm-4-5-air \
    --jinja \
    --ctx-size 64000 \
    --n-gpu-layers 99 \
    -ot ".ffn_.*_exps.=CPU" \
    --temp 1.0 \
    --top-p 0.95 \
    --top-k 40 \
    --port 10001
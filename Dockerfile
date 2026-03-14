FROM vllm/vllm-openai:v0.17.1

RUN apt-get update -y && \
    DEBIAN_FRONTEND=noninteractive apt install -y wget curl netcat net-tools git && \
    rm -rf /var/lib/apt/lists/*

RUN uv pip install --system vllm[audio]

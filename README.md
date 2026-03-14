# Audio enabled vLLM docker template

This is a quick example for using vLLM for ASR models like openai/whisper-large-v3

Just take the base image of vLLM as in vllm/vllm-openai:v0.17.1 and add vllm[audio] to it.

The included Dockerfile does this job for you:

```
docker build -t stelterlab/vllm-openai:v0.17.1-audio .
```

Replace "stelterlab" with something you prefer. There are no ready made images under this id yet. ;-) 
But mind to adjust the image name in the docker-compose.yml accordingly.

You'll find supported models in the official vLLM documentation [Supported Models](https://docs.vllm.ai/en/stable/models/supported_models/?h=supported+model#transcription)

The example includes openai/whisper-large-v3 which works quite well.

Rename env_example to .env and replace the HF_TOKEN with a valid one with your own or remove env_file from the docker-compose.yml.

To start - just run:

```
docker compose up -d
```

Tested also on Spark/GB10.

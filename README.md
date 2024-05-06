# Ollama-Pilot-CasaOs
[Pythagora-io/GPT-pilot](https://github.com/Pythagora-io/gpt-pilot/) Ported to Ollama docker Compose

- [Install Ollama Server](https://github.com/hqnicolas/OllamaDockerCasaOs) with ROCm GPU
- Make Sure that you have the following Images:
```
gemma:7b-instruct-q8_0
codellama:7b-instruct-fp16
neural-chat:7b-v3.3-q5_K_M
```
Clone Pythagora Repo.
```
git clone https://github.com/Pythagora-io/gpt-pilot.git
```
Edit the file .env on /gpt-pilot/pilot/.env
[Example](https://github.com/Pythagora-io/gpt-pilot/blob/main/pilot/.env.example)
Edit casaos-compose.yaml
```
- OPENAI_ENDPOINT=http://10.1.1.1:11434/v1/chat/completions
```

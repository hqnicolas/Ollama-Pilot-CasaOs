# Ollama-Pilot-CasaOs
[Pythagora-io/GPT-pilot](https://github.com/Pythagora-io/gpt-pilot/) Ported to Ollama docker Compose

- [Install Ollama Server](https://github.com/hqnicolas/OllamaDockerCasaOs) with ROCm GPU
- Make Sure that you have the following Images:
```
gemma:7b-instruct-q8_0
codellama:7b-instruct-fp16
llama3:8b-instruct-q6_K
```
Install Miniconda
```
wget https://raw.githubusercontent.com/hqnicolas/Ollama-Pilot-CasaOs/main/install_miniconda.sh
sudo chmod 777 install_miniconda.sh
sudo ./install_miniconda.sh
```
- install CasaOs
```
sudo apt-get update -y
sudo apt-get install curl -y
wget -qO- https://get.casaos.io/v0.4.7 | sudo bash
```
Install Docker-Compose
```
wget https://raw.githubusercontent.com/hqnicolas/Ollama-Pilot-CasaOs/main/install_docker.sh
sudo chmod 777 docker.sh
sudo ./docker.sh
```
Install Postgres
```
wget https://raw.githubusercontent.com/hqnicolas/Ollama-Pilot-CasaOs/main/install_postgres.sh
sudo chmod 777 install_postgres.sh
sudo ./install_postgres.sh
```
-Clone Pythagora Repo.
```
git clone https://github.com/Pythagora-io/gpt-pilot.git
cd gpt-pilot
wget https://raw.githubusercontent.com/hqnicolas/Ollama-Pilot-CasaOs/main/casaos-compose.yaml
sudo rm docker-compose.yml
mv casaos-compose.yaml docker-compose.yml
```
[Example](https://github.com/Pythagora-io/gpt-pilot/blob/main/pilot/.env.example)
- Edit [casaos-compose.yaml](https://github.com/hqnicolas/Ollama-Pilot-CasaOs/blob/main/casaos-compose.yaml) to point for [Ollama Server](https://github.com/hqnicolas/OllamaDockerCasaOs)
```
- OPENAI_ENDPOINT=http://10.1.1.1:11434/v1/chat/completions
```
Configure .env
```
cd pilot
mv .env.example .env
# Edit the file .env with your config
nano .env
```
Build
```
cd ..
sudo docker compose build gpt-pilot
sudo docker compose up gpt-pilot
```


# Usa uma imagem base do Python 3.9
FROM python:3.9-slim

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia o arquivo de requisitos do projeto para o container
COPY ./app/ ./

# Instala as dependências listadas no arquivo requirements.txt
RUN pip install -r requirements.txt

# Expoe a porta 8000
EXPOSE 8000

# Comando para iniciar a aplicação com o gunicorn
# O log level é definido como debug para facilitar a depuração
# O comando aponta para o módulo api dentro do projeto, que contém a aplicação Flask
CMD gunicorn --log-level debug --bind 0.0.0.0:8000 api:app

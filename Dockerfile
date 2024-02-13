FROM nginx:latest

# Instalação do vim
RUN apt-get update && \
    apt-get install -y vim && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copia os arquivos HTML para o diretório do nginx
COPY html/ /usr/share/nginx/html

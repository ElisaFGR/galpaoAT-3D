FROM nginx:1.27-alpine

# Porta em que o container escuta (a plataforma pode sobrescrever com a variável PORT)
ENV PORT=8080

# Configuração do nginx (o arquivo .template recebe o valor de ${PORT} ao iniciar)
COPY default.conf.template /etc/nginx/templates/default.conf.template

# Modelo 3D (arquivo único, sem dependências externas)
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 8080

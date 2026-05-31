FROM nginx:1.27-alpine

# Configuração do nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Arquivos estáticos do site
COPY index.html styles.css /usr/share/nginx/html/
COPY logo/ /usr/share/nginx/html/logo/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

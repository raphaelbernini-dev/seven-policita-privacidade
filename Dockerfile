FROM nginx:1.27-alpine

# Configuração do nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Arquivos estáticos do site
COPY index.html styles.css /usr/share/nginx/html/
COPY logo/ /usr/share/nginx/html/logo/

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=5s --start-period=5s --retries=3 \
  CMD wget -qO- http://localhost/ >/dev/null 2>&1 || exit 1

CMD ["nginx", "-g", "daemon off;"]

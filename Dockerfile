FROM nginx:alpine

# Copie ton site dans le dossier de Nginx
COPY index.html /usr/share/nginx/html/index.html

# Optionnel : si tu veux un fichier de config nginx personnalisé
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

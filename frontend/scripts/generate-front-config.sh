#!/bin/sh

# IMPORTANT: /!\ Ce script a vocation à n'être lancé que dans le container docker du frontend /!\

set -e

# Création du fichier config.json
cat <<EOF > /usr/share/nginx/html/assets/config.json
{
  "FRONTEND_API_URL": "${FRONTEND_API_URL}"
}
EOF

# Lancement de nginx (commande par défaut de l'image officielle)
nginx -g "daemon off;"

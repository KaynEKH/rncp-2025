# ------ #
# NOTICE #
# ------ #
# This file is a template of the env file.
# Initialize your env file by copying this template with name .env
# Once the .env has been created from this template, you can modify it as you wish.

# Domain
#   - This would be set to the production domain with an env var on deployment
#     used by Traefik to transmit traffic and aqcuire TLS certificates.
#   - To test the local Traefik config: DOMAIN=localhost.tiangolo.com
DOMAIN=localhost

# Environment: local, dev, staging, production
ENVIRONMENT=local

PROJECT_NAME="RNCP Traefik 2025"
STACK_NAME=rncp-traefik-2025

# Backend
BACKEND_CORS_ORIGINS="http://dashboard.localhost,http://localhost:5173"
SECRET_KEY=-TGiInpp2qT0DTr902T98ygr5dWR5bCOSeOibKgDINg
FIRST_SUPERUSER=rncp.fastapi.traefik@gmail.com
FIRST_SUPERUSER_PASSWORD=FabSebCleIsm2025!

# Emails
SMTP_HOST=smtp.gmail.com
SMTP_USER=rncp.fastapi.traefik@gmail.com
SMTP_PASSWORD="yuso ofjf fisu ebcu"
EMAILS_FROM_EMAIL=rncp.fastapi.traefik@gmail.com
SMTP_TLS=false
SMTP_SSL=false
SMTP_PORT=465

# Postgres
POSTGRES_SERVER=db # IMPORTANT: must have the same value as for database service
POSTGRES_PORT=5432
POSTGRES_DB=traefik2025
POSTGRES_USER=fsci2025
POSTGRES_PASSWORD=FabSebCleIsm2025!

# Sentry for Python
SENTRY_DSN=

# Frontend
FRONTEND_BUILD_MODE=dev # Work around for generating an environment agnostic frontend image. 
                    # Accepted values:
                    #  - dev: distribution is minified and react tools are loaded
                    #  - production: distribution is NOT minified and react tools are NOT loaded
FRONTEND_HOST=http://localhost:5173 # Used by the backend to generate links in emails to the frontend
                                    # In staging and production, set this env var to the frontend host, e.g.
                                    # FRONTEND_HOST=https://dashboard.example.com
FRONTEND_API_URL=http://api.localhost
MAILCATCHER_HOST=http://localhost:1080
PLAYWRIGHT_HTML_HOST=0.0.0.0

# Configure these with your own Docker registry images
DOCKER_IMAGE_BACKEND=fsci2025/rncpback2025-arm64
DOCKER_IMAGE_FRONTEND=fsci2025/rncpfront2025-arm64

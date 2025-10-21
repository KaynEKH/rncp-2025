# Stage 0, "build-stage", based on Node.js, to build and compile the frontend
FROM node:20 AS build-stage

ARG FRONTEND_BUILD_MODE

# /!\ work around, do not override this environment variable /!\ (see .env file for details)
ENV NODE_ENV=${FRONTEND_BUILD_MODE}

WORKDIR /app

COPY package*.json /app/

RUN npm install --include=dev

COPY ./ /app/

RUN npm run build


# Stage 1, based on Nginx, to have only the compiled app, ready for production with Nginx
FROM nginx:1

ENV NODE_ENV="local"
ENV FRONTEND_API_URL="http://localhost:8000"

COPY --from=build-stage /app/dist/ /usr/share/nginx/html
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
COPY ./nginx-backend-not-found.conf /etc/nginx/extra-conf.d/backend-not-found.conf

COPY --from=build-stage /app/scripts /tmp/scripts
RUN chmod -R a+x /tmp/scripts

ENTRYPOINT ["/tmp/scripts/generate-front-config.sh"]

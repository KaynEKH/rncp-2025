# RNCP FastAPI Traefik Project - Get Started

## Full documentation

The full documentation of the templete of the project is available [here](./README.md).

## Technical requirements

* [Python](https://www.python.org/downloads/) _(version 3.10.18 to 3.12.7)_

* [Pnpm](https://pnpm.io/installation)

* [Docker](https://www.docker.com/)

* [Docker Compose](https://docs.docker.com/compose/)

## Global environment of the project

* Copy the environment template file under the name `.env`

```bash
copy .env.tpl .env
```

* Modify the file `.env` as you wish

## Back End

* From the root of the project, go to `backend` directory

```bash
cd ./backend
```

* Install python module [uv](https://pypi.org/project/uv/)

```bash
pip install uv
uv --version
```

* Install the required python dependencies 

```bash
uv sync
```

* Activate the python virtual environment

```bash
source .venv/bin/activate
```

## Front End

* From the root of the project, go to `frontend` directory

```bash
cd ./frontend
```

* Check the node version in the file `.nvmrc` and install it with `pnpm`

```bash
pnpm env use --global <NODE_VERSION>
node -v
```

* Install dependencies with `npm`

```bash
npm i
```

_Important: do NOT use `pnpm` for the installation of the dependencies_

* Run locally the front

First, set the url api in field `FRONTEND_API_URL` of the file [config.json](./frontend/public/assets/config.json)

Next, run the website

```bash
npm run dev
```

## Docker Compose

### Watch mode

* Start the local stack with Docker Compose:

```bash
docker-compose watch
```

_Notice: the watch mode reloads the docker compose configuration after each modification in the code_

* Now you can open your browser and interact with these URLs:

Frontend, built with Docker, with routes handled based on the path: http://localhost:5173

Backend, JSON based web API based on OpenAPI: http://localhost:8000

Automatic interactive documentation with Swagger UI (from the OpenAPI backend): http://localhost:8000/docs

Adminer, database web administration: http://localhost:8080

Traefik UI, to see how the routes are being handled by the proxy: http://localhost:8090

**Note**: The first time you start your stack, it might take a minute for it to be ready. While the backend waits for the database to be ready and configures everything. You can check the logs to monitor it.

To check the logs, run (in another terminal):

```bash
docker compose logs
```

To check the logs of a specific service, add the name of the service, e.g.:

```bash
docker compose logs backend
```

To stop the services:

```bash
docker compose down
```

### Detached mode

* Start the local stack with Docker Compose:

```bash
docker-compose up -d
```

* Now you can open your browser and interact with these URLs:

Frontend, built with Docker, with routes handled based on the path: http://localhost:5173

Backend, JSON based web API based on OpenAPI: http://localhost:8000

Automatic interactive documentation with Swagger UI (from the OpenAPI backend): http://localhost:8000/docs

Adminer, database web administration: http://localhost:8080

Traefik UI, to see how the routes are being handled by the proxy: http://localhost:8090

**Note**: The first time you start your stack, it might take a minute for it to be ready. While the backend waits for the database to be ready and configures everything. You can check the logs to monitor it.

To check the logs, run (in another terminal):

```bash
docker-compose logs
```

To check the logs of a specific service, add the name of the service, e.g.:

```bash
docker-compose logs backend
```

To stop the services:

```bash
docker compose down
```
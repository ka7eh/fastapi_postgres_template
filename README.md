# FastAPI and PostgreSQL template [WIP]

Based on https://github.com/tiangolo/full-stack-fastapi-postgresql

## Set up dev environment

- Install the dependencies with poetry: `poetry install`.
- Create a postgresql database for your project.
- Copy `.env-example` to `.env` and adjust the environment variables.
- Apply the migrations: `./scripts/create_migrations.sh`.
- Run the mock SMTP server for emails: `./scripts/run_dev_email_server.sh`.
- Run Rabbitmq and celery workers for background tasks: `./scripts/run_workers.sh`.
  > Requires docker to start a rabbitmq container.
- Run the API server: `./scripts/run_dev_server.sh`.

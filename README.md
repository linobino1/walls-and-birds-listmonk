# Listmonk example

## Development Setup

Initially, listmonk needs to set up the database schema. To do this, uncomment the `install command` in `docker-compose.yaml` and run `docker compose up -d`. Then, comment out the `install command` again and run `docker compose up -d` again.

Subsequently you can just run `docker compose up -d` and visit `http://localhost:9000`

## Production Deployment on Fly.io

1. Create a `.env` file like .env.example with the necessary environment variables.
1. Run `flyctl launch` to create a new app.
1. Run `source fly_deploy.sh` to deploy the app.

## Database Migration

1. Make sure the source and target listmonk installs are on the same version.
1. on the source run `pg_dump -v -Ft <db_name/uri> > export.sql`
1. on the target run `pg_restore -v -e --no-owner -d <db_name/uri> export.sql`

# Listmonk example

This example deploys self-hosted version of [Listmonk](https://listmonk.app/).

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app/new/template/listmonk)

## ✨ Features

- Listmonk
- Postgres

## 💁‍♀️ How to use

- Click the Railway button 👆
- Fill in the variables
- Deploy! 🚄

## 📝 Notes

- Source repo: https://github.com/knadh/listmonk
- Docs: https://listmonk.app/docs/

## Development Setup

Initially, listmonk needs to set up the database schema. To do this, uncomment the `install command` in `docker-compose.yaml` and run `docker compose up -d`. Then, comment out the `install command` again and run `docker compose up -d` again.

Subsequently you can just run `docker compose up -d` and visit `http://localhost:9000`

## Database Migration

1. Make sure the source and target listmonk installs are on the same version.
1. on the source run `pg_dump -v -Ft <db_name/uri> > export.sql`
1. on the target run `pg_restore -v -e --no-owner -d <db_name/uri> temp/export.sql`

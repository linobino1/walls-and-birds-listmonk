# load .env
source .env

# run flyctl deploy with build args
flyctl deploy \
  --build-arg ADMIN_USERNAME=$ADMIN_USERNAME \
  --build-arg ADMIN_PASSWORD=$ADMIN_PASSWORD \
  --build-arg PGHOST=$PGHOST \
  --build-arg PGPORT=$PGPORT \
  --build-arg PGUSER=$PGUSER \
  --build-arg PGPASSWORD=$PGPASSWORD \
  --build-arg PGDATABASE=$PGDATABASE \
  --build-arg PGSSL_MODE=$PGSSLMODE
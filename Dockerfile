FROM listmonk/listmonk:v5.0.3
ARG PORT ADMIN_USERNAME ADMIN_PASSWORD PGHOST PGPORT PGUSER PGPASSWORD PGDATABASE PGSSLMODE
ENV LISTMONK_APP__ADDRESS="0.0.0.0:9000" \
  LISTMONK_DB__HOST="${PGHOST}" \
  LISTMONK_DB__PORT=${PGPORT} \
  LISTMONK_DB__USER="${PGUSER}" \
  LISTMONK_DB__PASSWORD="${PGPASSWORD}" \
  LISTMONK_DB__DATABASE="${PGDATABASE}" \
  LISTMONK_DB__SSL_MODE="${PGSSLMODE}" \
  LISTMONK_DB__MAX_OPEN=3 \
  LISTMONK_DB__MAX_IDLE=1
COPY static /listmonk/static
RUN ./listmonk --config="" --idempotent --yes --upgrade || ./listmonk --config="" --install --yes --upgrade
EXPOSE 9000
CMD ["./listmonk", "--static-dir=/listmonk/static"]
FROM listmonk/listmonk:v2.5.1
ARG PORT ADMIN_PASSWORD ADMIN_USERNAME PGDATABASE PGHOST PGPASSWORD PGPORT PGUSER
COPY static /listmonk/static
COPY config.sh ./config.sh
RUN chmod +x ./config.sh && ./config.sh
RUN ./listmonk --idempotent --yes --upgrade || ./listmonk --install --yes --upgrade
CMD ["./listmonk", "--static-dir=/listmonk/static"]
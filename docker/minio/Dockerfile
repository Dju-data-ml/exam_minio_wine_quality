FROM datascientest/minio:latest

COPY init_minio.sh /
WORKDIR /data

EXPOSE 9000 9001

CMD ["server", "/data", "--console-address", ":9001"] 
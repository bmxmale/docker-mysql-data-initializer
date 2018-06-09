FROM mysql:5.7

ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=development
ENV MYSQL_USER=development
ENV MYSQL_PASSWORD=development

COPY docker-entrypoint.sh /usr/local/bin/

FROM auto-skew-elle

run apk add py3-requests

RUN mkdir -p /usr/local/diamond-hands
COPY cron/* /usr/local/diamond-hands/
COPY stocks.yml /usr/local/etc

COPY crontab /etc/crontabs/root
COPY 20-crond /etc/inittab.d

COPY htdocs/index.html /opt/htdocs

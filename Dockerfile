FROM auto-skew-elle

RUN mkdir -p /usr/local/diamond-hands
COPY cron/* /usr/local/diamond-hands/

COPY crontab /etc/crontabs/root
COPY htdocs/index.html /opt/htdocs
COPY stocks.yml /usr/local/etc
COPY 20-crond /etc/inittab.d

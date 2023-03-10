FROM jamesstevens/auto-skew-elle

RUN apk add py3-requests py3-pandas py3-pip py3-requests-futures py3-tqdm
RUN pip install yahooquery

RUN mkdir -p /usr/local/diamond-hands
COPY cron /usr/local/diamond-hands/
COPY stocks.yml /usr/local/etc

COPY crontab /etc/crontabs/root
COPY 20-crond /etc/inittab.d

COPY htpasswd /etc/nginx
COPY htdocs/* /opt/htdocs/

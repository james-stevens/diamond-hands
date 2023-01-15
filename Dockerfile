FROM jamesstevens/auto-skew-elle

RUN apk add py3-requests py3-pandas py3-cryptography py3-frozendict py3-pip
RUN pip install multitasking

RUN mkdir -p /usr/local/diamond-hands
COPY cron /usr/local/diamond-hands/
RUN ln -s /usr/local/diamond-hands/localyf /usr/local/diamond-hands/yfinance
COPY stocks.yml /usr/local/etc

COPY crontab /etc/crontabs/root
COPY 20-crond /etc/inittab.d

COPY htpasswd /etc/nginx
COPY htdocs/* /opt/htdocs/

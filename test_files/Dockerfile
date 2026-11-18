FROM python:3.11-slim-bookworm
# django apache dependencies
RUN apt-get update
RUN apt-get install -y vim apt-utils apache2 apache2-utils
RUN apt-get install -y libapache2-mod-wsgi-py3

# Shibboleth dependencies
RUN apt-get update && apt-get upgrade -y --no-install-recommends
RUN apt-get install -y ca-certificates openssl
RUN apt-get install -y libapache2-mod-shib openntpd --no-install-recommends

#need for psycopg2
RUN apt-get install -y libpq-dev build-essential

# Application files
COPY backend /var/www/html/energydashboard.fz-juelich.de
# Copy start script
COPY ./start-apache.sh /
RUN chmod +x /start-apache.sh

# activates apache2 modules
RUN a2enmod ssl headers alias include negotiation shib

WORKDIR /var/www/html/energydashboard.fz-juelich.de

RUN pip install -r requirements.txt

EXPOSE 80 443
ENTRYPOINT ["/start-apache.sh"]
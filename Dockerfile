FROM debian:jessie

ENV CHRONOGRAF_VERSION=0.4.0

RUN apt-get update && apt-get install -y wget
RUN wget https://s3.amazonaws.com/get.influxdb.org/chronograf/chronograf_${CHRONOGRAF_VERSION}_amd64.deb
RUN dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb && rm chronograf_${CHRONOGRAF_VERSION}_amd64.deb

ENV CHRONOGRAF_BIND=0.0.0.0:10000

EXPOSE 10000

CMD [ "/opt/chronograf/chronograf" ]

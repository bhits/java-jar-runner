FROM openjdk:8u102-jre

MAINTAINER Bhits Team

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# convert windows or Mac line endings to linux in /entrypoint.sh
RUN apt-get update && apt-get install -y dos2unix && dos2unix /entrypoint.sh && dos2unix -c mac /entrypoint.sh && apt-get --purge remove -y dos2unix && apt-get clean && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/entrypoint.sh"]
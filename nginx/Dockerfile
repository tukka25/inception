FROM debian:latest

EXPOSE 80

EXPOSE 443

COPY index.html etc/web/

RUN apt-get update && apt-get install -y sudo && sudo apt-get -y install nginx && apt-get install -y systemctl && sudo apt-get install -y ufw


CMD ["sleep", "infinity"]

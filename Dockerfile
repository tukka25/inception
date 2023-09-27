FROM debian:penultimate

RUN  apt-get update && apt-get install sudo 

CMD ["sleep", "infinity"]

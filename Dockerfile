FROM boogie666/elasticsearch:2.4.6 

USER root

RUN apt-get update
RUN apt-get install -y dnsutils
COPY es-docker /usr/share/elasticsearch/bin/
USER elasticsearch
CMD ["es-docker"]

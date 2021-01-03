FROM python:3.8.7-buster
RUN apt-get update \
    && apt-get install -y vim \
        jq \
        squid
RUN pip3 install jupyter \
      requests \
      BeautifulSoup4 \
      reppy \
      feedparser \
      pdfminer.six \
      selenium
EXPOSE 8888
WORKDIR /var
CMD /bin/bash
# CMD jupyter-notebook --port 8888 --ip=0.0.0.0 --allow-root

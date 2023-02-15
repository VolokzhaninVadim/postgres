FROM postgres:13.1
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
    && apt-get install wget -y \
    && apt-get install postgresql-13-postgis-3 -y \
    && apt-get install postgis -y

CMD ["postgres"]

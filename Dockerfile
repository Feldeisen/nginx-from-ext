FROM nginx

MAINTAINER Feldeisen, lars@feldeisen.de

# Packages
RUN apt-get update && \
    apt-get install -y unzip wget

EXPOSE 80

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]

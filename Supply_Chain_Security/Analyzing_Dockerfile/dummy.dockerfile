FROM nginx:1.19.10

USER root

RUN apt-get update && apt-get install -y wget
RUN useradd -ms /bin/bash nginxuser
ENV db_password=MadmaxUltra

USER root

ENTRYPOINT ["/docker-entrypoint.sh"]
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
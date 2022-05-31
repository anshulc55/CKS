FROM nginx:1.21.6
# User Latest Validated Version
# Avoid using the latest tag version

USER root

RUN apt-get update 
# Installing few Software, remove umwanted software

RUN useradd -ms /bin/bash nginxuser
#ENV db_password=MadmaxUltra
# Avoid putting Sensitive data in Docker File. Use K8s Secrets

USER nginxuser
# Last user Directive should not be root.

ENTRYPOINT ["/docker-entrypoint.sh"]
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
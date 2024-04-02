FROM pangeo/base-image:2024.03.22

USER root

# This has to go here, because postBuild doesn't run as root
ADD installCodeServer /tmp/installCodeServer
RUN chmod +x /tmp/installCodeServer && /tmp/installCodeServer

USER $NB_USER

FROM pangeo/base-image:2024.03.22

USER root

RUN curl -fsSL https://code-server.dev/install.sh | sh -s -- --dry-run

USER $NB_USER

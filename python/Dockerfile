FROM pangeo/base-image:2024.03.22

USER root

RUN curl -fsSL https://code-server.dev/install.sh --version 4.19.1 | sh

USER $NB_USER

RUN code-server --install-extension ms-python.python && \
    code-server --install-extension ms-toolsai.jupyter && \
    code-server --install-extension charliermarsh.ruff

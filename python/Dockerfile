FROM pangeo/base-image:2024.03.22

USER root

RUN wget https://code-server.dev/install.sh -O /tmp/install.sh && \
    sh /tmp/install.sh --version 4.91.1 && \
    rm /tmp/install.sh

USER $NB_USER

RUN code-server --install-extension ms-python.python && \
    code-server --install-extension ms-toolsai.jupyter && \
    code-server --install-extension charliermarsh.ruff

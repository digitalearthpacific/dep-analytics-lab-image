FROM pangeo/base-image:2024.03.22

ENV RUSTFLAGS="-C link-arg=-Wl,-rpath-link,$CONDA_PREFIX/lib -C link-arg=-Wl,-rpath,$CONDA_PREFIX/lib -L$CONDA_PREFIX/lib"

USER root

RUN wget https://code-server.dev/install.sh -O /tmp/install.sh && \
    sh /tmp/install.sh --version 4.19.1 && \
    rm /tmp/install.sh

RUN export RUSTFLAGS="-C link-arg=-Wl,-rpath-link,$CONDA_PREFIX/lib -C link-arg=-Wl,-rpath,$CONDA_PREFIX/lib -L$CONDA_PREFIX/lib" && \
    pip install git+https://github.com/opendatacube/odc-algo.git@add-rust-geomedian-impl

USER $NB_USER

RUN code-server --install-extension ms-python.python && \
    code-server --install-extension ms-toolsai.jupyter && \
    code-server --install-extension charliermarsh.ruff

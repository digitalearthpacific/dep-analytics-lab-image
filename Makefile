build-python:
	cd python && \
	docker build --tag=ghcr.io/digitalearthpacific/dep-python:2024.03.22 .

lock-python:
	cd python && \
	conda-lock -f environment.yml -p linux-64

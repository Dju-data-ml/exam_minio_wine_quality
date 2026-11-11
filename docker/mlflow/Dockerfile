FROM ghcr.io/mlflow/mlflow:v3.17.2

COPY --from=ghcr.io/astral-sh/uv:0.13.7 /uv /uvx /bin/
WORKDIR /mlflow
COPY requirements.txt .
RUN uv pip install -U pip --system
RUN uv pip install -U -r requirements.txt --system

EXPOSE 5000

CMD ["mlflow", "server", "--host", "0.0.0.0", "--port", "5000"]

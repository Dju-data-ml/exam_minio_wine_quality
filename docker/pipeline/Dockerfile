FROM python:3.11.18-slim@sha256:07d4824036af339fa1b6ef769cc99d9c10a141769538b52b3b597c84f7a7b535
COPY --from=ghcr.io/astral-sh/uv:0.13.7 /uv /uvx /bin/
RUN apt-get update && apt-get install -y git
WORKDIR /app

COPY requirements.txt .

RUN uv pip install -U -r requirements.txt --system

CMD ["tail", "-f", "/dev/null"]
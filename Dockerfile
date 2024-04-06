FROM ubuntu:22.04

WORKDIR /app

# COPY Documentation/ .

RUN apt update && apt install mkdocs -y

EXPOSE 8000

CMD mkdocs build && mkdocs serve -a 0.0.0.0:8000
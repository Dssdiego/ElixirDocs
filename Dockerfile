FROM ubuntu:22.04

WORKDIR /app

# COPY Documentation/ .

RUN apt update
RUN apt install python3-pip -y
RUN pip install mkdocs
RUN pip install mkdocs-dracula-theme
RUN pip install mkdocs-material
# RUN apt install mkdocs -y

EXPOSE 8000

CMD mkdocs build && mkdocs serve -a 0.0.0.0:8000
From debian:stretch
MAINTAINER soundgoof "soundgoof@gmail.com"

RUN DEBIAN_FRONTEND=noninteractive apt-get update -y; \
    DEBIAN_FRONTEND=noninteractive apt-get install -y dumb-init python3-bottle python3-requests

COPY ./app /app
WORKDIR /app

EXPOSE 8080
ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD ["python3", "/app/app.py"]


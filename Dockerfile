# Use Alpine as base
FROM alpine:3.18.0

# Maintainer
LABEL maintainer="eric.six@lacework.net"

RUN apk add --no-cache py3-pip

COPY ./app /app

WORKDIR /app

RUN pip3 install --no-cache-dir --requirement ./requirements.txt

EXPOSE 5000

CMD ["python3", "/app/app.py"]
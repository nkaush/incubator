FROM python:3.11-rc-buster

WORKDIR /mount

COPY requirements.txt /mount/requirements.txt

RUN pip install -r requirements.txt

COPY . /mount

RUN chmod +x /mount/docker-entrypoint.sh

ENTRYPOINT [ "/mount/docker-entrypoint.sh" ]

HEALTHCHECK --interval=1m --timeout=3s \
  CMD curl -f http://localhost:9999/healthcheck || exit 1
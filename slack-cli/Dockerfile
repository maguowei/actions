FROM python:3.9-slim

ENV PIP_INDEX_URL https://mirrors.aliyun.com/pypi/simple/
ENV PIPENV_PYPI_MIRROR https://mirrors.aliyun.com/pypi/simple/
RUN pip install -U pip && pip install pipenv
WORKDIR /app
COPY . /app
RUN pipenv install --system
ENTRYPOINT ["/app/slack-cli.py"]

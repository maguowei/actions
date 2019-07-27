FROM docker:stable

LABEL "name"="Kubernetes gcr.io image Sync"
LABEL "maintainer"="maguowei <imaguowei@gmail.com>"
LABEL "version"="1.0.0"

LABEL "com.github.actions.name"="Kubernetes gcr.io image Sync"
LABEL "com.github.actions.description"="Kubernetes gcr.io image Sync"
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="blue"

RUN apk add --update \
    bash \
    curl \
  && rm -rf /var/cache/apk/*

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

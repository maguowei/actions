FROM python:3.7

LABEL "com.github.actions.name"="pycodestyle"
LABEL "com.github.actions.description"="Python style checker"
LABEL "com.github.actions.icon"="mic"
LABEL "com.github.actions.color"="purple"

LABEL "repository"="http://github.com/maguowei/actions"
LABEL "homepage"="http://github.com/maguowei/actions"
LABEL "maintainer"="Guowei Ma <imaguowei@gmail.com>"

RUN pip install --upgrade pip
RUN pip install pycodestyle

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

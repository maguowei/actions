FROM golang

LABEL "com.github.actions.name"="golang test"
LABEL "com.github.actions.description"="golang test"
LABEL "com.github.actions.icon"="mic"
LABEL "com.github.actions.color"="purple"

LABEL "repository"="http://github.com/maguowei/actions"
LABEL "homepage"="http://github.com/maguowei/actions"
LABEL "maintainer"="Guowei Ma <imaguowei@gmail.com>"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

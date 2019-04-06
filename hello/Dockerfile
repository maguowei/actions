FROM ubuntu

LABEL "com.github.actions.name"="Hello World"
LABEL "com.github.actions.description"="Write arguments to the standard output"
LABEL "com.github.actions.icon"="mic"
LABEL "com.github.actions.color"="purple"

LABEL "repository"="http://github.com/maguowei/actions"
LABEL "homepage"="http://github.com/maguowei/actions"
LABEL "maintainer"="Guowei Ma <imaguowei@gmail.com>"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

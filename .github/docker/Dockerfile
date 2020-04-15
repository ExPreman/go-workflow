FROM golang:1.10.4

LABEL "com.github.actions.name"="build-test"
LABEL "com.github.actions.description"="run go test and build command"
LABEL "com.github.actions.icon"="terminal"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="http://github.com/ExPreman/go-workflow"
LABEL "homepage"="http://github.com/ExPreman"

COPY entry_point.sh /entry_point.sh

ENV GITHUB_ACTION=yes

ENTRYPOINT ["/entry_point.sh"]

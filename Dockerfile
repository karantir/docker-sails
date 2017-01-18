FROM alpine:3.5
MAINTAINER Dmitry Krupnov <dmitry.krupnov@gmail.com>

RUN apk add --no-cache nodejs
RUN npm install -g sails

ENV PROJECT_ROOT /project_root

WORKDIR ${PROJECT_ROOT}
VOLUME ${PROJECT_ROOT}
EXPOSE 1337

CMD ["sails", "lift"]
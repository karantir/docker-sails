FROM mhart/alpine-node
MAINTAINER Dmitry Krupnov <dmitry.krupnov@gmail.com>

RUN npm install -g sails

ENV PROJECT_ROOT /project_root

WORKDIR ${PROJECT_ROOT}
VOLUME ${PROJECT_ROOT}
EXPOSE 1337

CMD ["sails", "lift"]
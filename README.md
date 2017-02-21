[![](https://images.microbadger.com/badges/image/karantir/sails.svg)](https://microbadger.com/images/karantir/sails) [![](https://img.shields.io/docker/pulls/karantir/sails.svg?colorB=0778b8)](https://hub.docker.com/r/karantir/sails/)

Getting started
---------------

#### Create new Sails project

    mkdir my-project && cd my-project
    docker run -it --rm -v $(pwd):/project_root sails sails new
    docker run -di --name=$(basename $(pwd)) -v $(pwd):/project_root -p 1337:1337 sails

#### Run existing Sails project

    cd my-project
    docker run -it --rm -v $(pwd):/project_root sails npm install
    docker run -di --name=$(basename $(pwd)) -v $(pwd):/project_root -p 1337:1337 sails

Running named container detached is a common pattern, so you are able to stop/start/restart/attach it later:

    docker restart my-project

#### Autostart container

    docker run --name=my-app --restart=always -di -v $(pwd):/project_root -p 1337:1337 sails

#### Accessing logs

    docker logs my-app --tail 20
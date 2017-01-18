Getting started
---------------

### Create new Sails project

    mkdir my-project && cd my-project
    docker run -it --rm -v $(pwd):/project_root docker-sails sails new
    docker run -di --name=my-app -v $(pwd):/project_root -p 1337:1337 docker-sails

### Run existing Sails project

    cd my-project
    docker run -it --rm -v $(pwd):/project_root docker-sails npm install
    docker run -di --name=my-app -v $(pwd):/project_root -p 1337:1337 docker-sails

### Running named container detached is a common pattern, so you are able to stop/start/restart/attach it later:

    docker restart my-app

### Autostart container

    docker run --name=my-app --restart=always -di -v $(pwd):/project_root -p 1337:1337 docker-sails

### Accessing logs

    docker logs my-app --tail 20
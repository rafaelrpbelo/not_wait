# Setup by docker

First make sure you have docker and docker-compose installed, then run these commands:

```bash
$ cp docker-compose.sample.yml docker-compose.yml
$ cp config/database.docker_sample.yml config/database.yml
$ docker-compose build
$ docker-compose run --rm web bundle install
$ docker-compose run --rm web bundle exec rake db:create
$ docker-compose up web
```

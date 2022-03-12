# Sinatra Telegram Bot Template

### Configure project

- put your environment variables on `config/docker.env`

- build the image and install dependencies with
```
docker-compose build
```

### Configuring database

create database

```
docker-compose run --rm bot bundle exec rake db:create
```

or

```
bundle exec rake db:create
```

create a migration

```
docker-compose run --rm bot bundle exec rake db:create_migration NAME=create_record
```

or

```
rake db:create_migration NAME=create_record
```

migrate database

```
docker-compose run --rm bot bundle exec rake db:migrate
```

or

```
rake db:migrate
```

drop database

```
docker-compose run --rm bot bundle exec rake db:drop
```

or

```
rake db:drop
```

### Running the project

```
docker-compose up --build
```

or

```
APP_ENV=development bundle exec rackup config.ru -o 0.0.0.0
```

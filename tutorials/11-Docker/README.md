# Docker

Docker is a tool that provides **containerisation**. 

When you run an application in Docker, you are running your application in a **container**.

## Why oh why?

Docker adds an additional layer of complexity into your workflow. So, why oh why do we bother?

[Let me tell you a story...](./story.md)

## Hands on Docker.

We will be using Docker in conjunction with Docker Compose.

Some useful links:

* [Docker Hub](https://hub.docker.com/) for Docker images
* [Dockerfile Docs](https://docs.docker.com/engine/reference/builder/) 
* [Docker Compose Docs](https://docs.docker.com/compose/compose-file/)

### CoW all the way down.

Docker images package up a full Linux distribution as part of the container image.

What this means is that we can build a Docker image for our application and base that image off of Ubuntu (which is roughly 300 megabytes).
This gives us the ability to build our application around Ubuntu's packages and particular quirks.

Docker uses a Copy-on-Write (CoW) file system to build a series of layers, in order to save space.

Let's examine a full example to find out how that works...

#### Alpine Dockerfile

Alpine Linux is a lightweight distribution (about 30MB), which is a popular choice for applications run inside containers (to save space).

Take a look at the [Alpine Linux 3.9's Dockerfile here](https://github.com/gliderlabs/docker-alpine/blob/master/versions/library-3.9/x86_64/Dockerfile).

You will notice it specifies `FROM scratch` as the parent Docker image, [which you can read more about here](https://hub.docker.com/_/scratch/).

* Why do you think Alpine 3.9 specifies `FROM scratch`?

It then `ADD`'s the full file system, which is the full Alpine linux operating system that has been compiled outside of Docker.

After that, it sets the default `CMD` to `sh` so that you get a shell interface by default when you access containers built with this Docker image.

#### Ruby Dockerfile

Looking at the [Dockerfile for Ruby 2.6.2 built ontop of Alpine 3.9](https://github.com/docker-library/ruby/blob/master/2.6/alpine3.9/Dockerfile).

You will notice it specifies `FROM alpine:3.9` as the parent Docker image, which we just saw.

Docker will automatically pull down that `alpine:3.9` image from Docker Hub, and then pull down the `ruby:alpine3.9` layer from Docker Hub.

Once it has done so, it can then reconstruct the full filesystem to be able to create containers based off the `ruby:alpine3.9` image.

You can find the [Ruby Docker image here](https://hub.docker.com/_/ruby/).

#### Ok, ok, but what does CoW mean?

When the Ruby Docker image is built, it makes changes to the filesystem. It copies files related to Ruby.

It could also make changes to files that were created by the Alpine Dockerfile.

What Docker does is it creates a lightweight layer that contains only the changes made by each consecutive Dockerfile.

In practice, if you build the Ruby Docker image yourself, it will first pull down a prebuilt Alpine image and layer Ruby on top.

Multiple images can be layered ontop of Alpine - you can have `python:alpine3.9` and `ruby:alpine3.9` and they will both share the same Alpine image on your disk.

This not only saves disk space, but it means that you don't have to rebuild Alpine or Ruby every time you build your own Dockerfile(s).

* If I run a container using `ruby:alpine3.9` and I then run `python:alpine3.9`, how much total disk space will be used?

### Dockerfile

As we've seen, Dockerfiles are used to specify the contents of a single Docker image, which can be used to create a container.

A typical Dockerfile will look something like this:

```Dockerfile
FROM ruby:2.6.2-alpine3.9

WORKDIR /app
COPY Gemfile ./
COPY Gemfile.lock ./
RUN bundle install

EXPOSE 4567

ADD . /app

CMD ["/app/bin/start.sh"]
```

* What is a Dockerfile used for?

### Docker Compose

Docker Compose is used to link multiple containers together to create useful units of work.

For example, if you wanted to run a web application, using a local Dockerfile linked to a local PostgreSQL container...

A typical `docker-compose.yml` file will look something like this:

```yaml
version: '3'
services:
  postgres:
    image: postgres:11-alpine
    environment:
      POSTGRES_USER: tutorial
      POSTGRES_PASSWORD: secretpassword
      POSTGRES_DB: tutorial_one
  web:
    build: .
    links: 
      - postgres
    volumes:
      - ./:/app
    ports:
      - "4567:4567"
    privileged: true
    environment:
      DB_URL: postgresql://tutorial:secretpassword@postgres/tutorial_one
      POSTGRES_USER: tutorial
      POSTGRES_HOST: postgres
      POSTGRES_PORT: 5432
      POSTGRES_DB: tutorial_one
      POSTGRES_PASSWORD: secretpassword
```

You can then execute commands inside the container like this:

```bash
docker-compose build #build all images
docker-compose run --rm --service-ports web bundle exec rspec
```

* What does `--rm` do?
* What does `--service-ports` do?
* Research what `docker-compose up` does.
* Research what `docker-compose down` does.

## Challenge

* Add Docker to a Ruby project and get it running.


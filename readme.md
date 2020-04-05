# Docker for Kirby CMS (v3)

Dockerfile for a container running Kirby CMS, Alpine, Apache and PHP7.

Check out [docker-getkirby-v2](https://github.com/paolomolo/docker-getkirby-v2) for the deprecated Kirby 2 Dockerfile

## Getting Started

### Usage with docker-compose

Create a `docker-compose.yml` in your Kirby directory:

```
version: '3'
services:
  docker:
    image: paolomolo/getkirby-apache:v3
    volumes:
      - ./content:/var/www/localhost/htdocs/content
      - ./site:/var/www/localhost/htdocs/site
      - ./assets:/var/www/localhost/htdocs/assets
      - ./media:/var/www/localhost/htdocs/media
    ports:
      - "80:80"

```

Then run `docker-compose up` from your command line and visit `localhost` in your browser.

## Built With

* [Kirby CMS](https://github.com/getkirby) a file‑based CMS
* [Alpine](https://github.com/alpinelinux) a security-oriented, lightweight Linux distribution
* [PHP7](https://github.com/php) incl. `php-curl, php-mbstring, php-ctype, php-gd`
* [Apache2](https://github.com/apache) web server

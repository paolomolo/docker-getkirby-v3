FROM paolomolo/apache-php7:php-7.3

WORKDIR /var/www/localhost/htdocs/

COPY ./kirbycms /var/www/localhost/htdocs/

RUN  mkdir /var/www/localhost/htdocs/thumbs && \
  chown -R apache:apache /var/www/localhost/htdocs/ && \
  chmod -R 755 /var/www/localhost/htdocs/thumbs

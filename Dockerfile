FROM php:8.4.5RC1-apache
WORKDIR /var/www/html
COPY index.php /var/www/html/
EXPOSE 80
CMD ["apache2-foreground"]

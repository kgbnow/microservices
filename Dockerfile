FROM nginx:latest

# Установка PHP-FPM и необходимых пакетов
RUN apt-get update && apt-get install -y php-fpm

# Открытие порта 80
EXPOSE 80

# Запуск PHP-FPM и Nginx
CMD service php7.4-fpm start && nginx -g "daemon off;"

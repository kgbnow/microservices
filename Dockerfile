#Образ Nginx
FROM nginx:1.25.0-bullseye
# Установка PHP-FPM
RUN apt-get update \
    && apt-get install -y php-fpm php-mysql\
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
# Копирование файла конфигурации Nginx
COPY nginx/default.conf /etc/nginx/conf.d/default.conf
# Объявление порта 80
EXPOSE 80
# Запуск PHP-FPM и Nginx
CMD service php7.4-fpm start && nginx -g "daemon off;"

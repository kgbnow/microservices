# microservices
Wordpress+MariaDB+NGINX+PHP-fpm+PHPmyAdmin in docker-compose

Склонировать репозиторий.
Запустить скрипт.


Задание:

На облачной платформе Базис создать ВМ.

ВМ1 (2 ядра 2 гига  HDD 30 гб)
Создать свой docker-compose file на базе v3, в котором описать развёртывание wordpress.
Компоненты:

NGINX
MYSQL (MariaDB)
PHP-fpm
PHPMYADMIN
в одном контейнере PHP+ NGINX  в которой будет замаплен локальный volume /var/www/html  + /nginx/nginx.conf   
и во втором БД MariaDB, в которой будет замаплен локальный volume ./mysql  /.
Cобрать и запустить, показать phpinfo, WORDPRESS, MYSQLADMIN.

Сетевое взаимодействие с БД должно осуществляться внутри контейнерной сети.

Настроить запуск docker-compose файла через systemd. Сервисы должны загружаться автоматически при старте системы.

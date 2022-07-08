FROM ubuntu:20.04

# Пользователь с правами su
USER superuser

# Оболочка баш
ENV SHELL=/bin/bash

# Обновляем систему (rep+utils+kernel)
RUN sudo apt update
RUN sudo apt upgrade -y
RUN sudo apt-get upgrade -y

# Добавление задачи в крон каждый час, еще можно добавить команду на выполнение скриптаЮ который уже на сервере, либо тут и создается
Run sudo echo "* */1 * * *  root echo "1">>/var/log/test.log" >> /etc/crontab

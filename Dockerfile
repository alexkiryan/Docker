FROM ubuntu:20.04

USER superuser

# Оболочка баш
ENV SHELL=/bin/bash

# Обновляем систему (rep+utils=kernel)
RUN sudo apt update
RUN sudo apt upgrade -y
RUN sudo apt-get upgrade -y

# Выполнено ДЗ № 3
## Знакомство с облачной инфраструктурой. Google Cloud Platform

 - [ V ] Основное ДЗ
1. Настройка SSH Forwarding для сквозного
подключения к нашим ВМ в одну строку
2. настройка vpn при с использованием pritunl

 - [ Х] Задание со *
1. подключение по ssh с использованием алиасов 
2. необходимо что бы в подкючении к pritunl использовался валидный сертификат 

## В процессе сделано:
 - Пункт 1
создали в ВМ в GCP 1 из которых не имела внешнего ipадреса
bastion_IP = 35.241.146.23
someinternalhost_IP = 10.132.0.16

Настроили SSH Forwarding для сквозного
подключения к нашим ВМ + подключения по алиасам
 
 - Пункт 2
Создали VPN-сервер для серверов GCP
на хосте bastion запустил готовый скрип по установки 2 х пакетов
прокликали в меню настройки и создания vpn клиента
запустили и проверили работу vpn

## Как запустить проект:
 -  1. Запуск в 1 строку:  на локальном ПК запустить eval `ssh-agent -s` && ssh-add && ssh -А -t 35.241.146.23 ssh someinternalhost
 -  2. подсовываем конфиг из репозитория вводим учетные записи из методички, подключамся.  
## Как проверить работоспособность:
1. после выполнения списка команд должны подключится к хосту someinternalhost
2. должны стать доступны ВМ по внутренним адресам. 

## Задание со звездочкой
1. Что бы ходить по алиасам с использованием SSH Forwarding  добавим в /home/user/.ssh/
файл config:

cat ~/.ssh/config
Host *
FоrwardAgent yes

Host bastion
HоstName 35.241.146.23

Host someinternalhost
HostName 10.132.0.16
ProxyCommand ssh bastion nc %h %p

## PR checklist
 - [ &] Выставил label с номером домашнего задания
 - [ V ] Выставил label с темой домашнего задания


# Выполнено ДЗ № 4

## Деплой тестового приложения

 - [ V ] Основное ДЗ

 - [ X  ] Задание со *

## В процессе сделано:
Установили и настроили gcloud для работы с моим аккаунтом;
Создал хост с помощью gcloud;
Установил на нем ruby для работы приложения;
Установил MongoDB и запустил;
Задеплоил тестовое приложение, запустил и проверил его
работу.

## Как запустить проект:

testapp_IP = 35.195.186.92
testapp_port = 9292
 
устоновка приложения осуществляется 3 скриптами:
запускать их неоходимо последовательно.
порядок запуска:

1. install_ruby.sh
2. install_mongodb.sh
3. deploy.sh 

добавление правила firewall:
gcloud compute firewall-rules create default-puma-server --allow=tcp:9292 --target-tags=puma-server

## Как проверить работоспособность:
для проверки необходимо перейти по URl:
http://http://35.195.186.92:9292/

## PR checklist
 - [ &] Выставил label с номером домашнего задания
 - [ V ] Выставил label с темой домашнего задания


# Выполнено ДЗ № 6

 - [V] Основное ДЗ
 - [ ] Задание со *

## В процессе сделано:

 - Пункт 1
 - Определили  input переменную для приватного ключа,
   использующегося в определении подключения для
   провижинеров

 - Пункт 2
 - Определили  input переменную для задания зоны в ресурсе
   "google_compute_instance" "app". задали ей default значение.

 - Пункт 3
 - отформатировали созданые конфигурационные файлы при помощи  "terraform fmt"

 - Пункт 4
 - Создал и отредактировал terraform.tfvars.example для последующей проверки
 - Немного убрал хлам и почистил репозиторий от не совсем коррктно выполненных прошлых заданий.  
## Как запустить проект:
 - установка проекта выполняется запуском из директории /terraform
   terraform apply

## Как проверить работоспособность:
 - Проверку можно осуществить перейдя по URL 35.205.129.166:9292

## PR checklist
 - [v] Выставил label с номером домашнего задания
 - [v] Выставил label с темой домашнего задания

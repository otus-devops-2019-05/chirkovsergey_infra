# chirkovsergey_infra
chirkovsergey Infra repository
Выполнено ДЗ № 3
Знакомство с облачной инфраструктурой. Google Cloud Platform
[V] Основное ДЗ
Настройка SSH Forwarding для сквозного 
подключения к нашим ВМ в одной версии
настройка vpn при использовании pritunl
[Х] Задание со *
подключение по ssh с использованием алиасов
необходимо был валидный сертификат
В процессе сделано:
Пункт 1 
создан в ВМ в GCP 1 из которых не было внешнего ipadresa 
bastion_IP = 35.241.146.23 
someinternalhost_IP = 10.132.0.16 
Настроить SSH-пересылку для сквозного 
подключения к нашим ВМ + подключение по алиасам

Пункт 2 
Создает VPN-сервер для серверов GCP 
на хосте Бастион запустил готовую скрипту по установке 2 х пакетов 
проксилировал в меню настройки и создания vpn клиента 
запустили и проверили работу vpn

Как запустить проект:
Запуск в 1 версии: на локальном ПК запустить eval ssh-agent -s&& ssh-add && ssh -А -t 35.241.146.23 ssh someinternalhost
подсовываем конфиг из репозитория вводим учетные записи из методички, подключамся.
Как проверить работоспособность:
команда должна быть подключена к хосту
должны стать доступны ВМ по внутренним адресам.
Задание со звездочкой
Пересылка по SSH добавлена ​​в /home/user/.ssh/ 
файл конфигурации: 
cat ~ / .ssh / config 
Host * 
FоrwardAgent yes
Хост-бастион 
HоstName 35.241.146.23

Host someinternalhost HostName 
10.132.0.16 
ProxyCommand ssh бастион nc% h% p

PR контрольный список
[&] Выставил лейбл с номером домашнего задания
[V] Выставил лейбл с темой домашнего задания

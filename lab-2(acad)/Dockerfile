# Використовуємо базовий образ CentOS 7
FROM centos:7

# Додаємо мітку з інформацією про авторів (студентів курсу)
LABEL maintainer="Student1, Student2"

# Встановлюємо пакет curl
RUN yum install -y curl

# Встановлюємо змінну оточення EDUCATION в значення "true"
ENV EDUCATION=true

# Створюємо робочу директорію /app
RUN mkdir /app

# Копіюємо скрипт script.sh до директорії /app
COPY script.sh /app

# Встановлюємо команду, яку слід виконати при запуску контейнера
CMD ["/app/script.sh"]

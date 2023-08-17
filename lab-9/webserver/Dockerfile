# Використовуємо офіційний імедж Apache
FROM httpd:latest

# Копіюємо файли конфігурації веб-сервера
COPY ./apache-config/httpd.conf /usr/local/apache2/conf/httpd.conf

# Копіюємо файли вебсайту до директорії веб-сервера
COPY ./website-content /usr/local/apache2/htdocs/

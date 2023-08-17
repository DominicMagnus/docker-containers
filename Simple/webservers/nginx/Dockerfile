# Використовуйте базовий образ
FROM nginx:latest

# Копіюйте файли в контейнер
COPY index.html /usr/share/nginx/html/

# Відкрийте порт для доступу до веб-сервера
EXPOSE 80

# Запустіть веб-сервер при старті контейнера
CMD ["nginx", "-g", "daemon off;"]

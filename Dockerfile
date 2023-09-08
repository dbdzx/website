# Образ
FROM python:3.10-slim

#Создаем рабочую директорию

#Зависимости
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
#Копируем остальные файлы
COPY . /app
WORKDIR /app
#Создаем переменную окружения

#Открываем порт
EXPOSE 5000
EXPOSE 443
#Команда для запуска
ENTRYPOINT [ "python" ]
CMD ["main.py"]
FROM python:3
RUN pip install Django==4.1
COPY . .
RUN python manage.py makemigrations
RUN python manage.py migrate
RUN python manage.py createsuperuser
CMD ["python","manage.py","runserver","0.0.0.0:8001"]

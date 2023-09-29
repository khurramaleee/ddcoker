FROM python:3.10
ENV PYTHONUNBUFFERED = 1
WORKDIR /app
COPY requirement.txt  .

RUN pip install -r requirement.txt
COPY . .
RUN python3 manage.py migrate
EXPOSE 8001 
CMD [ "python3","manage.py","runserver"]
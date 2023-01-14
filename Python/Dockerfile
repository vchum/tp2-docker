FROM python:3.6-buster
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN apt-get update
RUN apt install gcc -y
RUN apt install openssl -y
RUN apt install python3-dev -y 
RUN apt install mariadb-server -y 
RUN apt install libmariadb3 libmariadb-dev -y
RUN pip install --upgrade pip
RUN pip3 install -r requirements.txt
RUN mkdir tp-sql
COPY tp-sql ./tp-sql

RUN sed -i 's/admin/user1/g' tp-sql/app-python/config.py
RUN sed -i "s/: 'password'/: 'user1'/g" tp-sql/app-python/config.py
RUN sed -i "s/: 'localhost'/: 'db-container'/g" tp-sql/app-python/config.py

RUN useradd -m user1
RUN yes user1 | passwd user1

RUN echo "python3 /usr/src/app/tp-sql/app-python/main.py" >> /home/user1/.profile

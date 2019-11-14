FROM openjdk:11

RUN mkdir /app
COPY app.java /app
COPY postgresql-42.2.5.jar /app

WORKDIR /app

RUN javac app.java
CMD ["java","--class-path","/app/postgresql-42.2.5.jar:.","app"]
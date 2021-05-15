FROM openjdk:8-jdk-slim

RUN mkdir DostavimVse
COPY ./ ./DostavimVse

WORKDIR DostavimVse

RUN ./mvnw package -DskipTests -P init-base
RUN mv target/dostavimvse-0.0.1-SNAPSHOT.jar target/init-base.jar
RUN ./mvnw package -DskipTests -P web-app
RUN mv target/dostavimvse-0.0.1-SNAPSHOT.jar target/web-app.jar

ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.9.0/wait /wait
RUN chmod +x /wait

CMD /wait && java -jar target/init-base.jar && java -jar target/web-app.jar

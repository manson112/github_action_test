FROM amazoncorretto:11-alpine-full

ARG APP_NAME=review-collector
ARG SRC_DIR=/opt/review-collector
ARG BUILD_DIR=build/libs
ARG JAR_FILE=review-collector.jar

COPY ${BUILD_DIR}/${JAR_FILE} ${SRC_DIR}/${JAR_FILE}

WORKDIR ${SRC_DIR}

CMD ["java", "-jar", "review-collector.jar"]
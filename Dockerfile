#Inspired by petervaczi/antlr

FROM alpine:3.8

LABEL maintainer=jacobwpeng

#RUN alpine install gcc g++ cmake make openjdk8
RUN apk add openjdk8

ENV ANTLR_VERSION "4.7.1"

ADD http://www.antlr.org/download/antlr-${ANTLR_VERSION}-complete.jar /

RUN chmod +r /antlr-${ANTLR_VERSION}-complete.jar

ENV CLASSPATH "/antlr-${ANTLR_VERSION}-complete.jar"

ENV PATH "/usr/lib/jvm/java-1.8-openjdk/bin:$PATH"

COPY rootfs/ /

CMD ["/usr/bin/antlr"]

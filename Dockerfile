FROM alpine:edge
RUN apk --update --no-cache add py2-pip ca-certificates gcc libffi-dev python2-dev musl-dev openssl-dev g++ libxml2-dev\
 libxslt-dev libjpeg-turbo-dev zlib-dev tshark
RUN pip install --upgrade pip
RUN pip install mitmproxy
COPY bin /bin
ENV LANG=en_US.UTF-8
VOLUME /root/.mitmproxy
EXPOSE 8080
CMD ["mitmproxy"]

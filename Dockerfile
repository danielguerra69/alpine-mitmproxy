FROM alpine:edge
RUN apk --update --no-cache add python3 ca-certificates gcc libffi-dev python3-dev musl-dev openssl-dev g++ libxml2-dev\
 libxslt-dev libjpeg-turbo-dev zlib-dev tshark
RUN pip3 install --upgrade pip
RUN pip3 install mitmproxy
COPY bin /bin
ENV LANG=en_US.UTF-8
VOLUME /root/.mitmproxy
EXPOSE 8080
CMD ["mitmproxy"]

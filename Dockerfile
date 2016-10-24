FROM alpine:edge
RUN apk --update --no-cache add py2-pip ca-certificates gcc libffi-dev python2-dev musl-dev libressl-dev g++ libxml2-dev\
 libxslt-dev libjpeg-turbo-dev zlib-dev
RUN pip install --upgrade pip
RUN pip install mitmproxy
RUN echo "export LANG=en_US.UTF-8"> /etc/profile.d/mitmproxy
VOLUME /root/.mitmproxy
EXPOSE 8080
CMD ["mitmproxy,"-T","--host"]

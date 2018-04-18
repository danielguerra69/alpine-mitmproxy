#!/bin/sh
mitmdump &
tshark -o 'ssl.desegment_ssl_records: TRUE' -o 'ssl.desegment_ssl_application_data: TRUE' -o 'ssl.keylog_file:sslkeylog' -o 'http.ssl.port:8080' -o 'ssl.debug_file:/root/tshark.log' -i eth0 -Y http

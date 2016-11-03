#!/bin/sh
mitmdump &
tshark -o 'ssl.desegment_ssl_records: TRUE' -o 'ssl.desegment_ssl_application_data: TRUE' -o 'ssl.keys_list: $HOSTNAME,8080,http,/root/.mitmproxy/mitmproxy-ca.pem' -o 'ssl.debug_file: /root/wireshark-log' -i eth1   -w - 'tcp and port 8080' | nc $1 $2

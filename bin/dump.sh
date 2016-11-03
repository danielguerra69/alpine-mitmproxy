#!/bin/sh
mitmdump &
tshark -i eth0

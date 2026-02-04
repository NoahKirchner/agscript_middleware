#!/bin/bash
# Stupid script that just sends data to the middleware server to test the examples. Usage:
# ./send_command.sh 'action("ITWORKS!");'
s="$1"
count=${#s}

{ printf "%08x" "$count"; printf "%s" "$s";} | nc localhost 50052


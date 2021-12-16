#!/bin/bash
space=$(df / | tail -n1 | awk '{print $4}')
if [ "$space" -lt 1000000 ]; then echo '1'; else echo '0';fi

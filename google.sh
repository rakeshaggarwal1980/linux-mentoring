#!/bin/bash
ping=$(ping -c 1 -w 1 -q  1.2.3.4 | tail -2 | head -1 | awk '{print $6}')
if [ "$ping" = "0%" ]; then echo "0";else echo "1";fi

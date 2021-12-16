#!/bin/bash
cpu=$(ps aux --sort=+%cpu | tail -n1 | awk '{print $3}')
if [ "${cpu%.*}" -gt 50 ]; then echo '1'; else echo '0';fi

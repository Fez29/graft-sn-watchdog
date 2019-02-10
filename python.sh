#!/bin/bash

bash -c 'sleep 350 && python3 snwatchdog.py --log-level 1 > watchdog.log 2>&1 &'
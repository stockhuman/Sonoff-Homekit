#!/bin/bash

python -m esptool \
            -p $ESPPORT \
            --baud 115200 \
            write_flash \
            -fs 1MB \
            -fm dout \
            -ff 40m \
            0x0 ./firmware/rboot.bin \
            0x1000 ./firmware/blank_config.bin \
            0x2000 ./firmware/sonoff.bin

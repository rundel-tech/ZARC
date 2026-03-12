#!/bin/bash
# Transfer file to ZARC using "stran".
# Merlin, 1/7/2020

stran --port /dev/ttyUSB0 to_cpm ZX81.COM D:
stran --port /dev/ttyUSB0 to_cpm rom/ZX81ROM.BIN D:


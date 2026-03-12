#!/bin/bash
# Transfer file to ZARC using "stran".
# Merlin, 30/6/2020

port='/dev/ttyUSB0'
cpm_dr='d:'

stran --port $port to_cpm FORMAT.COM $cpm_dr


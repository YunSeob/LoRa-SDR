#!/bin/sh
export VOLK_GENERIC=1
export GR_DONT_LOAD_PREFS=1
export srcdir="/home/yun/Desktop/GNU_lora/LoRa-SDR/gr-LoRaGW/python"
export GR_CONF_CONTROLPORT_ON=False
export PATH="/home/yun/Desktop/GNU_lora/LoRa-SDR/gr-LoRaGW/build/python":$PATH
export LD_LIBRARY_PATH="":$LD_LIBRARY_PATH
export PYTHONPATH=/home/yun/Desktop/GNU_lora/LoRa-SDR/gr-LoRaGW/build/swig:$PYTHONPATH
/usr/bin/python3 /home/yun/Desktop/GNU_lora/LoRa-SDR/gr-LoRaGW/python/qa_preamble_detect.py 

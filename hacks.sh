#!/bin/bash

# Hacks to git mozzi to work

# Fix capacitive touch keys
cp RCpoll.h .pio/libdeps/ATmega644P/Mozzi/RCpoll.h

# Envelope fixes from v1.2.1
cp ADSR.h .pio/libdeps/ATmega644P/Mozzi/ADSR.h

# Improve audio quality
sed -i '' "s/^#define AUDIO_MODE STANDARD_PLUS/#define AUDIO_MODE HIFI/" .pio/libdeps/ATmega644P/Mozzi/mozzi_config.h

#!/bin/bash
rm -rf .pio
pio run --target clean
pio run
./hacks.sh
pio run

# pio run -t upload

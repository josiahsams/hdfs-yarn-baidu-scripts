#!/bin/bash

export NMON_INTERVAL=5
export NMON_SAMPLES=1000
export NMON_DIR=~/nmon_data

mkdir -p $NMON_DIR

nmon -f -s $NMON_INTERVAL -c $NMON_SAMPLES -m $NMON_DIR



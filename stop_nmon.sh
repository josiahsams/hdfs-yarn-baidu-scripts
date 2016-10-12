#!/bin/bash

pid=`ps -elf | grep nmon | grep -v grep | cut -c12-19`
kill -9 $pid



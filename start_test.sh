#!/bin/bash

NSTART

# Let nmon initialization is complete
sleep 10

cd ~/tpc-ds

#echo "running q98"
#./run-single.sh q98
#sleep 10
echo "running q73"
./run-single.sh q73
sleep 10
echo "running q68"
./run-single.sh q68
sleep 10
echo "running q63"
./run-single.sh q63
sleep 10
echo "running q55"
./run-single.sh q55
sleep 10
echo "running q52"
./run-single.sh q52
sleep 10
echo "running q43"
./run-single.sh q43
sleep 10
echo "running q42"
./run-single.sh q42
sleep 10
echo "running q19"
./run-single.sh q19
sleep 10
echo "Completed"

NSTOP

NGET



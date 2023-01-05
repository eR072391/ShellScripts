#!/bin/bash

zombie_pids=$(ps aux | grep 'Z' | awk '{print $2}')

for pid in $zombie_pids;
do
	kill -9 $pid
done

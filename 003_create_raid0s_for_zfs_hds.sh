#!/bin/bash

for i in 2 3 4 5 6
do 
	megacli -cfgldadd -r0[252:${i}] WB RA Cached CachedBadBBU -strpsz512 -a0 -NoLog
done

#!/bin/bash

/DPS-1.4.0-sc2022 --nthreads=32 --mem-lim=262144 --verbose=0 --model --ks-pakis -m 0 --non-det $1

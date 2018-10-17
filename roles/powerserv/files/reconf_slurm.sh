#!/bin/bash

for s in s1 s2 s4 g1; do
    scp /etc/slurm/slurm.conf ${s}:/etc/slurm/
done
scontrol reconfigure

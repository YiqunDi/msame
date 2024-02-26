#!/bin/sh

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/Ascend/nnrt/latest/x86_64-linux/lib64/

for i in {1..10} 
do
    ./msame --model "HumanPose.om" --output "out/" --outfmt TXT --loop 1000000 &    sleep 1 
done


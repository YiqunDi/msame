#!/bin/sh

#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/Ascend/ascend-toolkit/latest/aarch64-linux/lib64/
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/Ascend/nnrt/latest/aarch64-linux/lib64/

for i in {1..10} 
do
    ./msame --model "$HOME/710StressTest/om_model/HumanPose.om" --output "$HOME/710StressTest/out/" --outfmt TXT --loop 1000000 &    sleep 1 
done

echo -e "time-consuming: $SECONDS   seconds"    #显示脚本执行耗时

#./msame --model "$HOME/710StressTest/om_model/yolov2_tf_1batch.om" --output "$HOME/710StressTest/out/" --outfmt TXT --loop 100000

#./msame --model "$HOME/710StressTest/om_model/HumanPose.om" --output "$HOME/710StressTest/out/" --outfmt TXT --loop 100000

#!/bin/bash

#安装nnrt的默认路径,如自定义安装路径,请修改
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/Ascend/nnrt/latest/x86_64-linux/lib64/

#安装ascend-toolkit的默认路径,如自定义安装路径,请修改
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/Ascend/ascend-toolkit/latest/x86_64-linux/lib64/

count_process() {
    local num="$1"
    local count=$(ps aux | grep -v grep | grep "$num" | wc -l)
    echo "$count"
}

while true
do
    for i in {0..3}
    do
        if [ $(count_process "device 0") -lt 4 ]; then
            ./msame --device 0 --model "./yolov4_bs1.om" --output "out/"  --loop 1000000  &
            sleep 1
        fi

        if [ $(count_process "device 1") -lt 4 ]; then
            ./msame --device 1 --model "./yolov4_bs1.om" --output "out/"  --loop 1000000  &
            sleep 1
        fi
    sleep 60
    done
    sleep 5
done

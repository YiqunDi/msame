# 本脚本用于NVR设备的NPU压力测试

# 模型获取
wget  https://obs-9be7.obs.cn-east-2.myhuaweicloud.com/003_Atc_Models/AE/ATC%20Model/YOLOv4_onnx/yolov4_bs1.om

如想获取其他模型,可去以下网址
https://gitee.com/ascend/samples/tree/master/python

# 文件框架
├── close.sh            //关闭压测程序
├── msame               //压测工具,默认模型空跑
├── npu_autotest.sh     //环境配置 && 压测运行脚本,不主动关闭可持续运行
├── out                 //模型推理输出路径
├── README.md           //说明文件
└── yolov4_bs1.om       //Ascend310 所用模型


# 实例说明

1. 直接运行程序
(1) 添加环境变量
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/Ascend/nnrt/latest/x86_64-linux/lib64/

(2) 命令行输入指令
./msame --device 0 --model "./yolov4_bs1.om" --output "out/"  --loop 10  &    sleep 1

上述命令参数说明
--device 指定运行的芯片,默认为0,取值 [0,255]
--model  选定所要使用的模型
--output 指定输出路径
--loop   程序的运行次数,范围为[1,1000000]

2. 使用脚本
命令行直接运行
./npu_autotest.sh

后台运行
nohup ./npu_autotest.sh > npu.log 2>&1 &

关闭当前运行的
./close.sh

# 运行成功的输出
    [INFO] acl init success
    [INFO] open device 0 success
    [INFO] create context success
    [INFO] create stream success
    [INFO] get run mode success
    [INFO] load model ./yolov4_bs1.om success
    [INFO] create model description success
    [INFO] get input dynamic gear count success
    [INFO] create model output success
    out//202388_18_34_56_79658
    [INFO] model execute success
    Inference time: 32.349ms
    [INFO] model execute success
    Inference time: 32.182ms
    [INFO] model execute success
    Inference time: 32.08ms
    [INFO] model execute success
    Inference time: 32.207ms
    [INFO] model execute success
    Inference time: 32.134ms
    ...
    [INFO] get max dynamic batch size success
    [INFO] output data success
    Inference average time: 32.115267 ms
    Inference average time without first time: 32.115220 ms
    [INFO] destroy model input success
    [INFO] unload model success, model Id is 1
    [INFO] pid: 117994 Execute sample success
    [INFO] end to destroy stream
    [INFO] end to destroy context
    [INFO] end to reset device is 1
    [INFO] end to finalize acl
    [INFO] end to finalize acl



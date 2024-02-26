# 本项目用于Ascend系列芯片的 NPU 压力测试和模型推理性能测试

├── build.sh            --msame 编译脚本
├── docker_mode_x86     --docker模式工具       
├── inc                 --msame 源码编译时需要的头文件
├── model               --msame 运行时可用的模型,Humanpose用于 Ascend 310P, yolo用于 Ascend 310
├── msame               --用于x86_64系统的mmsame
├── npu_test_x86        --npu测试工具
├── run_arm             --已编译好的用于aarch64系统的工具
├── run_x86             --已编译好的用于x86_64系统的工具
└── src                 --msame 源码

# msame

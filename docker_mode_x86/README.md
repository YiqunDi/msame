# docker 镜像生成及使用说明

1. 镜像生成
docker build -t npu_test:1.0 .

2. 运行容器
docker run -it --privileged -v /usr/local/Ascend/:/usr/local/Ascend/ \
    -v /usr/lib/x86_64-linux-gnu/libstdc++.so.6:/usr/lib/x86_64-linux-gnu/libstdc++.so.6 \
    -it nputest:2.0 /bin/bash

3. 进入容器后
cd npu_test && ./npu_autotest.sh

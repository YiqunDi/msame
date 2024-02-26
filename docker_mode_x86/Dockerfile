FROM ubuntu:18.04
WORKDIR /home/deepglint

COPY ./npu_test ./npu_test

ENV LD_LIBRARY_PATH=/usr/local/Ascend/driver/lib64/:$LD_LIBRARY_PATH
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y build-essential

CMD cd npu_test \
    && nohup ./npu_autotest.sh > npu.log 2>&1 &

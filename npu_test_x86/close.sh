#!/bin/sh

ps -ef|grep msame|grep -v grep|cut -c 9-16|xargs kill -9
ps -ef|grep npu_autotest|grep -v grep|cut -c 9-16|xargs kill -9

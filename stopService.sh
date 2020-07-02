#!/bin/bash

echo "ps -ef | grep '${1}' | grep -v grep | awk '{print $2}'"
pid=`ps -ef | grep '${1}' | grep -v grep | awk '{print $2}'`
if [[ -n "$pid" ]];then
#!kill -9 强制终止
	 echo "kill -9 的pid:" $pid
 	kill -9 $pid
fi

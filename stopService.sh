#!/bin/bash

if [[ -n $serviceJar ]];then
	pid=`ps -ef | ${serviceJar} | grep -v grep | awk '{print $2}'`
	if [[ -n "$pid" ]];then
	#!kill -9 强制终止
  	 echo "kill -9 的pid:" $pid
   	kill -9 $pid
	fi
fi

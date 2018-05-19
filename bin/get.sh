#!/bin/sh
#  @author:       Zhanliang Liu
#  @description:  get http://www.bjjs.gov.cn/bjjs/fwgl/fdcjy/fwjy/index.shtml

echo "Starting download http://www.bjjs.gov.cn/bjjs/fwgl/fdcjy/fwjy/index.shtml"
CURR_PATH=`cd $(dirname $0);pwd;`
cd $CURR_PATH
day=`date +%Y%m%d`
echo $day
wget http://www.bjjs.gov.cn/bjjs/fwgl/fdcjy/fwjy/index.shtml  -O ../data/${day}.html
git add ../data/${day}.html
git commit -m "get data for ${day}"
git push

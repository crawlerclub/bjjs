#!/bin/sh
#  @author:       Zhanliang Liu
#  @description:  get www.bjjs.gov.cn daily
HOME=/home/zliu
#url="http://www.bjjs.gov.cn/bjjs/fwgl/fdcjy/fwjy/index.shtml"
#url="http://zjw.beijing.gov.cn/bjjs/fwgl/fdcjy/fwjy/index.shtml"
url="http://bjjs.zjw.beijing.gov.cn/eportal/ui?pageId=307749"
echo "Starting download ${url}"
CURR_PATH=`cd $(dirname $0);pwd;`
cd $CURR_PATH
day=`date +%Y%m%d`
echo $day >> git.log
wget ${url}  -O ../data/${day}.html
git add ../data/${day}.html
git commit -m "get data for ${day}" >> git.log
git push >> git.log

#!/bin/bash

if [ $# -ne 1 ]; then
    echo $0: usage: run-sngle.sh query_name
    exit 1
fi

QUERY_TEMPLATE="/home/baidu/tpc-ds/query.template"
QUERY_SCALA="/home/baidu/tpc-ds/$1.scala"

rm -rf $QUERY_SCALA

sed "s/queryName/$1/g" "$QUERY_TEMPLATE" > $QUERY_SCALA

export HADOOP_USER_NAME=baidu
cd /home/baidu/tpc-ds
/home/baidu/spark/bin/spark-shell --master yarn-client --name dsdgen --driver-memory 30g --driver-cores 40 --num-executors 24 --executor-cores 18 --executor-memory 22g --jars /home/baidu/spark-sql-perf/target/scala-2.10/spark-sql-perf_2.10-0.3.2.jar -i /home/baidu/tpc-ds/$1.scala > /home/baidu/tpc-ds/$1.out 2>&1


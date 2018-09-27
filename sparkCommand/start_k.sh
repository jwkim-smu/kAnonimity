#!/bin/bash

spark-submit --class com.kAnonymity_maven.kAnonymity_project --master yarn --deploy-mode cluster --driver-memory 10g --executor-memory 10g --executor-cores 4 hdfs:///jars/kAnonymity_maven-0.0.1-SNAPSHOT.jar $1 $2 $3 $4 $5

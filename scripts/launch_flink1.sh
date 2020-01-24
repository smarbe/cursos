#!/bin/sh
PATHFLINK="/usr/flink/flink-1.9.1/bin/flink"
PATHHOME="/home/flink/"
PATHAPP= ""${PATHHOME}Projects/Cursos/"

NOW=$(date +"%YY%m%d%H%M%S")
$PATHFLINK run ${PATHAPP}bin/reduce-0.0.1-SNAPSHOT.jar --input  ${PATHHOME}input/flink1.txt --output ${PATHHOME}output/flink1${NOW}.txt

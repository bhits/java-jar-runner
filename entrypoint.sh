#!/bin/sh
echo JAVA_OPTS: $JAVA_OPTS
echo JAR_FILE: $JAR_FILE
echo DEFAULT_PROGRAM_ARGS: $DEFAULT_PROGRAM_ARGS
echo Additional Program Args: $@
exec java $JAVA_OPTS -jar $JAR_FILE $DEFAULT_PROGRAM_ARGS $@
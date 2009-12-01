#!/bin/sh

JREBEL=`dirname $0`/symlinks/jrebel/jrebel.jar
SBT_LAUNCHER=`dirname $0`/symlinks/sbt

JREBEL_OPTS="-noverify -javaagent:$JREBEL"
JAVA_OPTS="-XX:MaxPermSize=256m -Xmx256M"

if [ -f "$JREBEL" ]; then
  JAVA_OPTS="$JAVA_OPTS $JREBEL_OPTS"
fi

java $JAVA_OPTS -jar $SBT_LAUNCHER "$@"

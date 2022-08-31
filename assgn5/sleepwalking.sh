#!/bin/bash

# script to start or stop a server

case "$1" in
	start)
		/tmp/sleepwalkingserver
	;;
	stop)
		kill $(cat /tmp/sleepwalkingserver.pid)
	;;
	*)
		echo "Usage sleep­walking start|stop" ; exit 1
	;;
esac

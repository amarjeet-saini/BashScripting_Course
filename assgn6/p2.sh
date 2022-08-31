#!/bin/bash

logit() {
	rand1=$RANDOM
	logger -i -t randomly user.info "$rand1"
}

logit
logit
logit

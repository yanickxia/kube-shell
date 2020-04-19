#!/usr/bin/env bash

var=`kubectl get po -n ${1} | grep ${2}`
pod=`echo "${var%% *}"`
kubectl exec -it ${pod} -n ${1} ${3:+bash}
#!/usr/bin/env bash

var=`kubectl get po -n ${1} | grep ${2}`
pod=`echo "${var%% *}"`
kubectl logs --tail 100 -f ${pod} -n ${1}
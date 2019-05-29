#!/usr/bin/env sh



echo 'kill the process'
set -x
kill $(cat .pidfile)

#!/bin/zsh
killall -q polybar

while pgrep -x polybar > /dev/null; do sleep 5; done

polybar left &
polybar right &


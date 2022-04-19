#!/usr/bin/env bash

killall polybar
# Wait until the processes have been shut down
(sleep 2; polybar example -r) &

echo "Bars launched..."

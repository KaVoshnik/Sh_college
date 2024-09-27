#!/bin/bash

current_pid=$PPID

echo "PID current process: $current_pid"

parent_pid=$(ps -p "$current_pid" -o ppid=)

echo "PID parent process: $parent_pid"

sleep 1

child_pid=$!
(
  echo "into new process:"
  echo "PID new process: $$"
  echo "PID parent process: $PPID"
  exit 0
) &

wait "$child_pid"

echo "New process is end."

echo "Process hierarchy (ps -ax):"
ps -ax

echo "Process hierarchy (pstree):"
pstree


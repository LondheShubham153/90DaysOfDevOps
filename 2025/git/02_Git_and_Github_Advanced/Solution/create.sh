#!/bin/bash

# Check if the number of tasks is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <number_of_tasks>"
  exit 1
fi

# Number of tasks
num_tasks=$1

# Loop to create subdirectories and files for each task
for ((i=1; i<=num_tasks; i++)); do
  Task_dir="task$i"
  mkdir -p "$Task_dir"
  touch "$Task_dir/Task${i}_sln.md"
  touch "$Task_dir/Task${i}_doc.md"
done

echo "Solution directory with $num_tasks tasks created successfully!"

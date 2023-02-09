#!/bin/bash

function create_dir() {
    for i in $(seq $2 $3); do
        mkdir "$1$i"
    done
    ls test
}

create_dir $1 $2 $3
#! /usr/bin/env bash

# Marco saves the pwd to a variable, polo returns to it from anywhere
marco() {
    current_dir=$(pwd)
}

polo() {
    cd $current_dir
}
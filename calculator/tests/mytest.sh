#!/usr/bin/env bash

CALCULATOR=$1

# Test 01: Testing multiplication
if [[ $($CALCULATOR 2 '*' 2) -ne 4 ]]; then
    echo 'ERROR! A valid run of the calculator (2*2) failed to produce 4 as an output!'
    exit 1
fi

# Test 02: Testing division
if [[ $($CALCULATOR 2 / 2) -ne 1 ]]; then
    echo 'ERROR! A valid run of the calculator (2/2) failed to produce 1 as an output!'
    exit 1
fi

# Test 03: Testing addition
if [[ $($CALCULATOR 2 + 5) -ne 7 ]]; then
    echo 'ERROR! A valid run of the calculator (2+5) failed to produce 7 as an output!'
    exit 1
fi

# Test 04: Testing subtraction
if [[ $($CALCULATOR 2 - 2) -ne 0 ]]; then
    echo 'ERROR! A valid run of the calculator (2-2) failed to produce 0 as an output!'
    exit 1
fi

# Test 05: Testing invalid operands
if $CALCULATOR ! / @; then
    echo 'ERROR! Calculator somehow succeeded when running on invalid operands(! / @).'
    exit 1
fi

# Test 06: Testing ability to produce negative numbers
if [[ $($CALCULATOR 4 - 11) -ne -7 ]]; then
    echo 'ERROR! A valid run of the calculator (4-11) failed to produce a negative number (-7) as an output!'
    exit 1
fi

# Test 07: Testing chained outputs.
if [[ $($CALCULATOR $($CALCULATOR 4 - 11) / -7) -ne 1] ]; then
    echo 'ERROR! valid run of chained calculator ((4 - 11)/-7) failed to produce 1.'
    exit 1
fi

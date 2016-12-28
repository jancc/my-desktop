#!/bin/bash
pactl set-default-sink $1
for s in `pactl list short sink-inputs | cut -d$'\t' -f1`; do
	pactl move-sink-input $s $1
done

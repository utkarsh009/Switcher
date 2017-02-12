#!/bin/bash

sudo /sbin/modprobe bbswitch
sudo /sbin/rmmod nouveau
sudo /sbin/modprobe i915
tee /proc/acpi/bbswitch <<< OFF

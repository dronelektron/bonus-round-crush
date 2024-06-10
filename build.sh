#!/bin/bash

PLUGIN_NAME="bonus-round-crush"

cd scripting
spcomp $PLUGIN_NAME.sp -o ../plugins/$PLUGIN_NAME.smx

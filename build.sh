#!/bin/bash

PLUGIN_NAME="bonus-round-crush"
PLAYER_CRUSH="../../player-crush/scripting/include"

cd scripting
spcomp $PLUGIN_NAME.sp -i $PLAYER_CRUSH -o ../plugins/$PLUGIN_NAME.smx

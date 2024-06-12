#!/bin/bash

PLUGIN_NAME="bonus-round-crush"
BONUS_ROUND_EVENTS="../../bonus-round-events/scripting/include"
PLAYER_CRUSH="../../player-crush/scripting/include"

cd scripting
spcomp $PLUGIN_NAME.sp -i include -i $BONUS_ROUND_EVENTS -i $PLAYER_CRUSH -o ../plugins/$PLUGIN_NAME.smx

#include <sourcemod>

#include "player-crush/api"

#include "bonus-round-crush/use-case"

#include "modules/console-variable.sp"
#include "modules/event.sp"
#include "modules/use-case.sp"

#define AUTO_CREATE_YES true

public Plugin myinfo = {
    name = "Bonus round crush",
    author = "Dron-elektron",
    description = "Allows you to crush players at the end of the round",
    version = "0.1.0",
    url = "https://github.com/dronelektron/bonus-round-crush"
};

public void OnPluginStart() {
    Variable_Create();
    Event_Create();
    AutoExecConfig(AUTO_CREATE_YES, "bonus-round-crush");
}

#include <sourcemod>

#include "bonus-round-events/api"
#include "player-crush/api"

#include "bonus-round-crush/use-case"

#include "modules/console-variable.sp"
#include "modules/use-case.sp"

#define AUTO_CREATE_YES true

public Plugin myinfo = {
    name = "Bonus round crush",
    author = "Dron-elektron",
    description = "Allows you to crush players at the end of the round",
    version = "1.0.0",
    url = "https://github.com/dronelektron/bonus-round-crush"
};

public void OnPluginStart() {
    Variable_Create();
    AutoExecConfig(AUTO_CREATE_YES, "bonus-round-crush");
}

public void BonusRound_OnReset(int client) {
    PlayerCrush_Disable(client);
}

public void BonusRound_OnLoser(int client) {
    if (UseCase_IsLosersMode()) {
        PlayerCrush_Enable(client);
    } else {
        PlayerCrush_Disable(client);
    }
}

public void BonusRound_OnWinner(int client) {
    if (UseCase_IsWinnersMode()) {
        PlayerCrush_Enable(client);
    } else {
        PlayerCrush_Disable(client);
    }
}

public void BonusRound_OnSpectator(int client) {
    PlayerCrush_Disable(client);
}

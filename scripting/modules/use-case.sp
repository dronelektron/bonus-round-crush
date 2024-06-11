void UseCase_EnablePlayerCrush(int winTeam) {
    if (Variable_Mode() == MODE_DISABLED) {
        return;
    }

    for (int client = 1; client <= MaxClients; client++) {
        if (IsClientInGame(client)) {
            UseCase_EnableCrush(client, winTeam);
        }
    }
}

static void UseCase_EnableCrush(int client, int winTeam) {
    int clientTeam = GetClientTeam(client);

    if (clientTeam <= TEAM_SPECTATOR) {
        return;
    }

    int mode = Variable_Mode();
    bool isBothMode = mode == MODE_BOTH;
    bool isWinnersMode = mode == MODE_WINNERS && clientTeam == winTeam;
    bool isLosersMode = mode == MODE_LOSERS && clientTeam != winTeam;

    if (isBothMode || isWinnersMode || isLosersMode) {
        PlayerCrush_Enable(client);
    }
}

void UseCase_DisablePlayerCrush() {
    for (int client = 1; client <= MaxClients; client++) {
        if (IsClientInGame(client)) {
            PlayerCrush_Disable(client);
        }
    }
}

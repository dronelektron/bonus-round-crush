void UseCase_EnablePlayerCrush(int winTeam) {
    if (!Variable_PluginEnabled()) {
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
    bool isWinner = clientTeam == winTeam;

    if (isWinner) {
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

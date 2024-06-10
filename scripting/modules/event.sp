void Event_Create() {
    HookEvent("dod_round_win", Event_RoundWin);
    HookEvent("dod_round_start", Event_RoundStart);
}

public void Event_RoundWin(Event event, const char[] name, bool dontBroadcast) {
    int winTeam = event.GetInt("team");

    UseCase_EnablePlayerCrush(winTeam);
}

public void Event_RoundStart(Event event, const char[] name, bool dontBroadcast) {
    UseCase_DisablePlayerCrush();
}

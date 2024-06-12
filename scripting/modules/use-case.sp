bool UseCase_IsLosersMode() {
    return IsBothMode() || Variable_Mode() == MODE_LOSERS;
}

bool UseCase_IsWinnersMode() {
    return IsBothMode() || Variable_Mode() == MODE_WINNERS;
}

static bool IsBothMode() {
    return Variable_Mode() == MODE_BOTH;
}

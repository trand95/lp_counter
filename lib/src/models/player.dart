class Player {
  int lifePoints;
  int delta;
  int currentLife;
  bool showDeltaText;
  bool showCurrentLifeText;
  int lastUpdateId;

  Player(
      {required this.lifePoints,
      this.delta = 0,
      this.currentLife = 0,
      this.showDeltaText = false,
      this.showCurrentLifeText = false,
      this.lastUpdateId = 0});
}

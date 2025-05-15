
class Character {
  String name;
  int health = 100;

  Character(this.name);

  void showStatus() {
    print('$name - Health: $health');
  }

  void takeDamage(int amount) {
    health -= amount;
    if (health < 0) health = 0;
    print('$name took $amount damage!');
  }

  bool isAlive() {
    return health > 0;
  }
}
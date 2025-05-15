import 'dart:math';

void main() {
  // Create players
  Player player1 = Player('Jett');
  Enemy enemy1 = Enemy('Bot Alpha');

  print('Welcome to Pelorant!\n');

  player1.showStatus();
  enemy1.showStatus();

  print('\n Shooting begins!\n');

  player1.shoot(enemy1);
  enemy1.shoot(player1);
  player1.shoot(enemy1);

  print('\n Final Status:');
  player1.showStatus();
  enemy1.showStatus();
}

// Base class
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


class Player extends Character {
  Player(String name) : super(name);

  void shoot(Character target) {
    if (!isAlive()) {
      print('$name is down and cannot shoot.');
      return;
    }
    int damage = Random().nextInt(25) + 5; // Random damage between 5 and 30
    print('$name shoots at ${target.name}!');
    target.takeDamage(damage);
  }
}


class Enemy extends Character {
  Enemy(String name) : super(name);

  void shoot(Character target) {
    if (!isAlive()) {
      print('$name is already defeated.');
      return;
    }
    int damage = Random().nextInt(20) + 5;
    print('$name attacks ${target.name}!');
    target.takeDamage(damage);
  }
}
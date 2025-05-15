import 'dart:math';
import 'character.dart';

class Player extends Character {
  Player(String name) : super(name);

  void shoot(Character target) {
    if (!isAlive()) {
      print('$name is down and cannot shoot.');
      return;
    }

    int damage = Random().nextInt(25) + 5; // 5 to 29
    print('$name shoots at ${target.name}!');
    target.takeDamage(damage);
  }
}
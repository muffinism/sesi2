import 'dart:math';
import 'character.dart';

class Enemy extends Character {
  Enemy(String name) : super(name);

  void shoot(Character target) {
    if (!isAlive()) {
      print('$name is already defeated.');
      return;
    }

    int damage = Random().nextInt(20) + 5; // 5 to 24
    print('$name attacks ${target.name}!');
    target.takeDamage(damage);
  }
}
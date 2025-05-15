import 'player.dart';
import 'enemy.dart';

void main() {
  Player player1 = Player('Jett');
  Enemy enemy1 = Enemy('Bot Alpha');

  print('🎮 Welcome to Pelorant!\n');

  player1.showStatus();
  enemy1.showStatus();

  print('\n🔫 Shooting begins!\n');

  player1.shoot(enemy1);
  enemy1.shoot(player1);
  player1.shoot(enemy1);

  print('\n📊 Final Status:');
  player1.showStatus();
  enemy1.showStatus();
}
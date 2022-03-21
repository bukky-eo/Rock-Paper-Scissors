import 'dart:io';

import 'dart:math';

enum Move { rock, paper, scissor }
void main() {
  final rng = Random();
  while (true) {
    stdout.write("Rock, Paper, Scissor (r/p/s): ");
    final input = stdin.readLineSync();
    print(input);
    if (input == "r" || input == "p" || input == "s") {
      var playerMove;
      if (input == "r") {
        playerMove = Move.rock;
      } else if (input == "p") {
        playerMove = Move.paper;
      } else {
        playerMove = Move.scissor;
      }
      final random = rng.nextInt(3);
      final aiMove = Move.values[random];
      print("You played: $playerMove");
      print("AI played: $aiMove");
      if (playerMove == aiMove) {
        print("It's a draw");
      } else if (playerMove == Move.rock && aiMove == Move.scissor ||
          playerMove == Move.paper && aiMove == Move.rock ||
          playerMove == Move.scissor && aiMove == Move.paper) {
        print("You Win");
      } else {
        print("You lose");
      }
      print("Selected: $input");
    } else if (input == "q") {
      break;
    } else {
      print("Invalid input");
    }
  }
}

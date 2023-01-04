import 'package:flutter/material.dart';
import 'package:memory_card_game/models/card.dart';

class CardGame extends StatelessWidget {
  const CardGame({super.key});

  @override
  Widget build(BuildContext context) {
    cardDeck;
    return Scaffold(
      body: GridView.builder(
        itemCount: cardDeck.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                color: Colors.cyan,
                child: Center(child: Text(cardDeck[index].currency))),
          );
        },
      ),
    );
  }
}

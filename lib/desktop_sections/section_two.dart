// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:section_link/model/card_model_list.dart';

import '../components/card_widget.dart';

class SectionTwo extends StatelessWidget {
  const SectionTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nossas oportunidades para sua empresa',
              style: const TextStyle(fontSize: 36),
            ),
            SizedBox(height: 25),
            SizedBox(
              width: 850,
              child: Text(
                'A parceria Contact & Alelo traz para sua empresa diversos benefícios! Navegue em nossas diversas opções e escolha aquela que é perfeira para sua empresa!',
                style: const TextStyle(fontSize: 24),
              ),
            ),
            SizedBox(height: 25),
            SizedBox(
              height: 450,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CardWidget(cardData: cards[0]),
                  CardWidget(cardData: cards[1]),
                  CardWidget(cardData: cards[2]),
                  CardWidget(cardData: cards[3]),
                  CardWidget(cardData: cards[4]),
                  CardWidget(cardData: cards[5]),
                  CardWidget(cardData: cards[6]),
                  CardWidget(cardData: cards[7]),
                  CardWidget(cardData: cards[8]),
                  CardWidget(cardData: cards[9]),
                  CardWidget(cardData: cards[10]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

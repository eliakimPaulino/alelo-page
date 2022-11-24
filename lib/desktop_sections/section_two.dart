// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:section_link/model/card_model_list.dart';

import '../components/card_widget.dart';
import '../components/entry_card.dart';
import '../model/entry_card_model.dart';

class SectionTwo extends StatelessWidget {
  const SectionTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 8.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nossas oportunidades para sua empresa',
                style: TextStyle(fontSize: 36),
              ),
              SizedBox(height: 25),
              SizedBox(
                width: 875,
                child: Text(
                  'A parceria Contact & Alelo traz para sua empresa diversos benefícios! Navegue em nossas diversas opções e escolha aquela que é perfeira para sua necessidade!',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              SizedBox(height: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(),
                  // Padding(
                  //   padding: const EdgeInsets.only(right: 100),
                  //   child: EntryCard(
                  //     cardModel: entryCardData[0],
                  //   ),
                  // ),
                  SizedBox(
                    height: 420,
                    width: 600,
                    child: CarouselSlider.builder(
                      options: CarouselOptions(
                        height: 420,
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 4),
                        // enlargeCenterPage: true,
                        // enlargeStrategy: CenterPageEnlargeStrategy.height,
                      ),
                      itemCount: entryCardData.length,
                      itemBuilder: (context, index, realIndex) {
                        final cardData = entryCardData[index];
                        return EntryCard(cardModel: cardData);
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

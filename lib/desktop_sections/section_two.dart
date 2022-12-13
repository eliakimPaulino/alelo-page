// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../components/entry_card.dart';
import '../model/entry_card_model.dart';

class SectionTwo extends StatefulWidget {
  const SectionTwo({Key? key}) : super(key: key);

  @override
  State<SectionTwo> createState() => _SectionTwoState();
}

class _SectionTwoState extends State<SectionTwo> {
  final controller = CarouselController();
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 8.0),
        child: Column(
          children: [
            SizedBox(
              height: 50,
              width: screenSize.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Entre em contato',
                    style: TextStyle(
                      fontSize: 12,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 190,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/contact.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 450,
                  width: 550,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Oportunidades\npara sua empresa',
                        style: TextStyle(
                          fontSize: 54,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 25),
                      SizedBox(
                        width: 875,
                        child: Text(
                          'A parceria Contact & Alelo traz para sua empresa diversos benefícios! Navegue em nossas diversas opções e escolha aquela que é perfeira para sua necessidade!',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      SizedBox(height: 50),
                      Align(
                        alignment: Alignment.center,
                        child: buildIndicator(),
                      ),
                      SizedBox(height: 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Center(
                              child: TextButton(
                                onPressed: previous,
                                child: const Text('<'),
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Center(
                              child: TextButton(
                                onPressed: next,
                                child: const Text('>'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: SizedBox(
                    height: 600,
                    width: 700,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 600,
                          width: 700,
                          child: CarouselSlider.builder(
                            carouselController: controller,
                            options: CarouselOptions(
                              initialPage: 0,
                              height: 700,
                              autoPlay: true,
                              autoPlayInterval: const Duration(seconds: 5),
                              onPageChanged: (index, reason) =>
                                  setState(() => activeIndex = index),
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
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: entryCardData.length,
        effect: SlideEffect(
          dotHeight: 10,
          dotWidth: 10,
          radius: 10,
          activeDotColor: Colors.orange,
          dotColor: Colors.black12,
        ),
      );

  void next() => controller.nextPage(
        curve: Curves.easeInOut,
        duration: const Duration(milliseconds: 350),
      );

  void previous() => controller.previousPage(
        curve: Curves.easeInOut,
        duration: const Duration(milliseconds: 350),
      );
}

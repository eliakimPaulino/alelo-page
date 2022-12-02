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
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 8.0),
        child: SizedBox(
          height: screenSize.height,
          width: screenSize.width,
          child: Column(
            children: [
              SizedBox(
                height: 100,
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
                    Text(
                      'NOSSA CARTEIRA',
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
                    height: 250,
                    width: 550,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
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
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(),
                      Row(
                        children: [
                          SizedBox(
                            height: 390,
                            width: 25,
                            child: TextButton(
                              onPressed: previous,
                              child: const Text('<'),
                            ),
                          ),
                          SizedBox(
                            height: 440,
                            width: 450,
                            child: Column(
                              children: [
                                CarouselSlider.builder(
                                  carouselController: controller,
                                  options: CarouselOptions(
                                    initialPage: 0,
                                    height: 420,
                                    autoPlay: true,
                                    autoPlayInterval:
                                        const Duration(seconds: 5),
                                    onPageChanged: (index, reason) =>
                                        setState(() => activeIndex = index),
                                  ),
                                  itemCount: entryCardData.length,
                                  itemBuilder: (context, index, realIndex) {
                                    final cardData = entryCardData[index];
                                    return EntryCard(cardModel: cardData);
                                  },
                                ),
                                buildIndicator(),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 390,
                            width: 25,
                            child: TextButton(
                              onPressed: next,
                              child: const Text('>'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: entryCardData.length,
        effect: SlideEffect(
          dotHeight: 12,
          dotWidth: 12,
          radius: 12,
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

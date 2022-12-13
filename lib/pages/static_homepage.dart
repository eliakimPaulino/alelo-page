import 'package:flutter/material.dart';

import '../desktop_sections/section_tree.dart';
import '../desktop_sections/section_two.dart';

class StaticHomePage extends StatelessWidget {
  const StaticHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: const [
          TopBannerHeader(),
          SectionTwo(),
          SectionThree(),
        ],
      ),
    ));
  }
}

class TopBannerHeader extends StatelessWidget {
  const TopBannerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 550,
                width: screenSize.width,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(0, 127, 97, 1),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 400,
                    width: screenSize.width / 1.2,
                    child: Row(
                      children: [
                        apresentacaoCartoes(),
                        const SizedBox(width: 30),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Alelo & Contact Mais',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 48,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Essa parceria traz os melhores benefícios e soluções para sua empresa!',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'As melhores soluções em cartões de benefícios e gestão corporativa na Alelo: vale-refeição, vale-alimentação, vale-combustível, vale-transporte e mais. Conheça os benefícios da Alelo!',
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 15,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 190,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/logo_branco.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
              header(),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: screenSize.height / 24,
                    child: const Text(
                      'Qual a sua necessidade hoje?',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 24,
                        color: Color.fromRGBO(0, 127, 97, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: screenSize.height / 16,
                    child: const Text(
                      'Entre em contato e ofereça aos seus colaboradores OS MELHORES BENEFÍCIOS DO MERCADO!',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromRGBO(0, 127, 97, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  final TextStyle _textstyle = const TextStyle(
    fontSize: 16,
    // fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  Widget header() {
    return SizedBox(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Home",
                    style: _textstyle,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("Sobre", style: _textstyle),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: ElevatedButton.icon(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  const Color.fromRGBO(189, 214, 84, 1),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    // side: const BorderSide(color: Colors.black),
                  ),
                ),
              ),
              onPressed: () {},
              label: const Text("Contato"),
              icon: const Icon(Icons.phone),
            ),
          ),
        ],
      ),
    );
  }

  Widget apresentacaoCartoes() {
    return Expanded(
      child: SizedBox(
        // height: 250,
        // width: 250,
        child: Stack(
          children: [
            Positioned(
              top: 20,
              right: 20,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 180,
                  width: 300,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                        image: AssetImage('assets/images/alelo_premiacao.png'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 180,
                  width: 300,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/images/alelo_multibeneficio.png'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 5,
              right: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 180,
                  width: 300,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                        image: AssetImage('assets/images/alelo_despesas.png'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 5,
              left: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 180,
                  width: 300,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                        image: AssetImage('assets/images/alelo_frota.png'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 180,
                  width: 300,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                        image: AssetImage('assets/images/alelo_natal.png'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

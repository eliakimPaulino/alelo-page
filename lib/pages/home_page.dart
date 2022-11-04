import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          _Menu((section) {
            _pageController.animateToPage(section,
                duration: const Duration(milliseconds: 500),
                curve: Curves.ease);
          }),
          Expanded(
            child: PageView(
              pageSnapping: false,
              controller: _pageController,
              scrollDirection: Axis.vertical,
              children: const [
                _Section(
                  colorFromRGBO1: Color.fromRGBO(0, 127, 99, 1),
                  colorFromRGBO2: Color.fromRGBO(0, 77, 59, 1),
                ),
                _SectionColorReverse(
                  colorFromRGBO2: Color.fromRGBO(0, 77, 59, 1),
                  colorFromRGBO1: Color.fromRGBO(0, 127, 99, 1),
                ),
                _Section(
                  colorFromRGBO1: Color.fromRGBO(0, 127, 99, 1),
                  colorFromRGBO2: Color.fromRGBO(0, 77, 59, 1),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

typedef SectionCallback = void Function(int);

class _Menu extends StatelessWidget {
  final SectionCallback sectionClick;

  const _Menu(this.sectionClick);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu_rounded,
                color: Color.fromRGBO(0, 127, 99, 1)),
          ),
          IconButton(
            splashRadius: 16,
            onPressed: () {
              sectionClick(0);
            },
            icon:
                const Icon(Icons.circle, color: Color.fromRGBO(0, 127, 99, 1)),
          ),
          IconButton(
            splashRadius: 16,
            onPressed: () {
              sectionClick(1);
            },
            icon:
                const Icon(Icons.circle, color: Color.fromRGBO(0, 127, 99, 1)),
          ),
          IconButton(
            splashRadius: 16,
            onPressed: () {
              sectionClick(2);
            },
            icon:
                const Icon(Icons.circle, color: Color.fromRGBO(0, 127, 99, 1)),
          ),
        ],
      ),
    );
  }
}

class _Section extends StatelessWidget {
  final Color colorFromRGBO1;
  final Color colorFromRGBO2;
  const _Section({
    Key? key,
    required this.colorFromRGBO1,
    required this.colorFromRGBO2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            colorFromRGBO1,
            colorFromRGBO2,
          ],
        ),
      ),
    );
  }
}

class _SectionColorReverse extends StatelessWidget {
  final Color colorFromRGBO1;
  final Color colorFromRGBO2;
  const _SectionColorReverse({
    Key? key,
    required this.colorFromRGBO1,
    required this.colorFromRGBO2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            colorFromRGBO2,
            colorFromRGBO1,
          ],
        ),
      ),
    );
  }
}
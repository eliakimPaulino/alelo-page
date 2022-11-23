import 'package:flutter/material.dart';

import '../desktop_sections/section_one.dart';
import '../desktop_sections/section_tree.dart';
import '../desktop_sections/section_two.dart';

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
          // _Menu(
          //   (section) {
          //     _pageController.animateToPage(section,
          //         duration: const Duration(milliseconds: 500),
          //         curve: Curves.ease);
          //   },
          // ),
          Expanded(
            child: PageView(
              pageSnapping: false,
              controller: _pageController,
              scrollDirection: Axis.vertical,
              children: const [
                SectionOne(),
                SectionTwo(),
                SectionThree(),
              ],
            ),
          ),
          _Menu(
            (section) {
              _pageController.animateToPage(section,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease);
            },
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu_rounded,
                color: Color.fromRGBO(0, 127, 99, 1)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                splashRadius: 16,
                onPressed: () {
                  sectionClick(0);
                },
                icon: const Icon(Icons.circle,
                    color: Color.fromRGBO(0, 127, 99, 1)),
              ),
              IconButton(
                splashRadius: 16,
                onPressed: () {
                  sectionClick(1);
                },
                icon: const Icon(Icons.circle,
                    color: Color.fromRGBO(0, 127, 99, 1)),
              ),
              IconButton(
                splashRadius: 16,
                onPressed: () {
                  sectionClick(2);
                },
                icon: const Icon(Icons.circle,
                    color: Color.fromRGBO(0, 127, 99, 1)),
              ),
            ],
          ),
          Container(
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/favicon.png'),
                  fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    );
  }
}

class _Section extends StatelessWidget {
  const _Section({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000,
    );
  }
}

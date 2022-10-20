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
      body: Column(
        children: [
          _Menu((section) {
            _pageController.animateToPage(section,
                duration: const Duration(milliseconds: 200),
                curve: Curves.ease);
          }),
          Expanded(
            child: PageView(
              pageSnapping: false,
              controller: _pageController,
              scrollDirection: Axis.vertical,
              children: const [
                _Section(color: Colors.red),
                _Section(color: Colors.green),
                _Section(color: Colors.blue),
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
      padding: const EdgeInsets.all(8.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        TextButton(
            onPressed: () {
              sectionClick(0);
            },
            child: const Text('Section 1')),
        TextButton(
            onPressed: () {
              sectionClick(1);
            },
            child: const Text('Section 2')),
        TextButton(
            onPressed: () {
              sectionClick(2);
            },
            child: const Text('Section 3')),
      ]),
    );
  }
}

class _Section extends StatelessWidget {
  final Color color;
  const _Section({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 1000,
    );
  }
}

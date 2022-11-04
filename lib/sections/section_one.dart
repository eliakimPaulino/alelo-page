import 'package:flutter/material.dart';

class SectionOne extends StatelessWidget {
  final Color colorFromRGBO1;
  final Color colorFromRGBO2;
  const SectionOne({
    Key? key,
    required this.colorFromRGBO1,
    required this.colorFromRGBO2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // height: 1000,
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
        child: Column(
          children: const [],
        ),
      ),
    );
  }
}
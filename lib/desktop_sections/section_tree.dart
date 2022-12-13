import 'package:flutter/material.dart';

class SectionThree extends StatelessWidget {
  const SectionThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 150,
          // height: MediaQuery.of(context).size.height * 0.15,
          width: double.infinity,
          color: const Color.fromRGBO(0, 127, 97, 1),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
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
                  const Spacer(),
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          text(() {}, "Sobre"),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          text(() {}, "Localização"),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          text(() {}, "Contato"),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.1,
                      )
                    ],
                  ),
                ],
              ),
              const Divider(
                thickness: 2,
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.facebook,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.camera,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.whatsapp),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.mail),
                    onPressed: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget text(onTap, String text) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../model/card_model_list.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key, required this.cardData,
  }) : super(key: key);
  final CardModel cardData;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        // side: const BorderSide(
        //   color: Colors.red,
        // ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: 1000,
        // width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 650,
                  child: ListTile(
                    title: Text(
                      cardData.listTileTitle,
                      style:
                          TextStyle(color: cardData.listTileTitleColor, fontSize: 32),
                    ),
                    subtitle: Text(cardData.listTileSubtitle),
                  ),
                ),
                SizedBox(
                  width: 650,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                        textAlign: TextAlign.justify,
                        maxLines: 23,
                        cardData.description),
                  ),
                ),
                SizedBox(
                  width: 650,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                          style: TextButton.styleFrom(
                              primary: cardData.listTileTitleColor),
                          child: const Text('Saiba Mais!'),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height,
                    width: 350,
                    child: Image(
                      image: AssetImage(cardData.vitrineImage),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 85,
                  left: 25,
                  child: Container(
                    height: 180,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                          image: AssetImage(cardData.cardImage), fit: BoxFit.cover),
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
}

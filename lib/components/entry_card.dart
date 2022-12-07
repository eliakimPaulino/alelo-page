import 'package:flutter/material.dart';
import 'package:section_link/pages/benefit_presentation.dart';

import '../model/entry_card_model.dart';

class EntryCard extends StatelessWidget {
  const EntryCard({
    Key? key,
    required this.cardModel,
  }) : super(key: key);

  final EntryCardModel cardModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.grey[30],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: SizedBox(
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              child: Container(
                color: Colors.red,
                height: 600,
                width: 400,
                child: Material(
                  child: Ink.image(
                    image: AssetImage(cardModel.cardVitrineImage),
                    fit: BoxFit.cover,
                    // Image(
                    //   cardModel.cardVitrineImage,
                    // ),
                    child: InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BenefitPresentation(),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cardModel.cardTitle,
                    style: const TextStyle(
                      letterSpacing: 4,
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    height: 2,
                    width: 75,
                    color: Colors.orange,
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    width: 380,
                    child: Text(
                      cardModel.cardSubtitle,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    width: 380,
                    child: Text(
                      cardModel.cardDescription,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Card(
//       elevation: 0,
//       color: Colors.grey[50],
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(20.0),
//       ),
//       child: SizedBox(
//         height: 349,
//         width: 375,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Column(
//               children: [
//                 Text(
//                   cardModel.cardTitle,
//                   style: const TextStyle(fontSize: 22),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(4.0),
//                   child: SizedBox(
//                     height: 225,
//                     child: Center(
//                       child: ClipRRect(
//                         borderRadius: const BorderRadius.all(Radius.circular(10)),
//                         child: SizedBox(
//                           height: 300,
//                           width: 350,
//                           child: Image.asset(
//                             cardModel.cardImage,
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(3.0),
//                   child: SizedBox(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           cardModel.cardSubtitle,
//                           style: const TextStyle(fontSize: 18),
//                         ),
//                         Text(
//                           cardModel.cardDescription,
//                           maxLines: 4,
//                           overflow: TextOverflow.ellipsis,
//                           textAlign: TextAlign.justify,
//                           style: const TextStyle(fontSize: 12),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Container(),
//                 TextButton(
//                   onPressed: () {},
//                   child: const Text('Saiba Mais!'),
//                 )
//               ],
//             ),
//           ],
//         ),
//       ),
//     );

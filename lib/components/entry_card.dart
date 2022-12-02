import 'package:flutter/material.dart';

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
        height: 400,
        width: 100,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: SizedBox(
                height: 300,
                width: 350,
                child: Image.asset(
                  cardModel.cardVitrineImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  cardModel.cardTitle,
                  style: const TextStyle(fontSize: 22),
                ),
                Text(
                  cardModel.cardSubtitle,
                  style: const TextStyle(fontSize: 18),
                ),
                Text(
                  cardModel.cardDescription,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(fontSize: 12),
                ),
              ],
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

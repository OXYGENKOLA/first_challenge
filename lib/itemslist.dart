// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ItemsList extends StatelessWidget {
  const ItemsList({super.key});

  static List imageList = [
    const Image(
      image: AssetImage('lib/images/male.png'),
    ),
    const Image(
      image: AssetImage('lib/images/female.png'),
    ),
    const Image(
      image: AssetImage('lib/images/shoe.png'),
    ),
    const Image(
      image: AssetImage('lib/images/palm.png'),
    ),
    const Image(
      image: AssetImage('lib/images/shirt.png'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MasonryGridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 1,
            crossAxisSpacing: 4,
            itemCount: imageList.length,
            itemBuilder: (context, index) {
      return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
        child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Container(
                  child: imageList[index],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 5),
                        Text('T-Shirt',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        
                        Text('from',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w200)),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(height: 5),
                        Text('T-Shirt',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w100)),
                     
                        Text('#50k',
                            style: TextStyle(fontWeight: FontWeight.w400))
                      ],
                    ),
                  ],
                )
              ],
            )),
      );
            },
          ),
    );
  }
}

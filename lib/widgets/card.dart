import 'package:flutter/material.dart';

class CoffeeCard extends StatefulWidget {
  const CoffeeCard({Key? key}) : super(key: key);

  @override
  State<CoffeeCard> createState() => _CoffeeCardState();
}

class _CoffeeCardState extends State<CoffeeCard> {
  List data = [
    {
      "image": "assets/images/c1.jpg",
    },
    {
      "image": "assets/images/c2.jpg",
    },
    {
      "image": "assets/images/c3.jpg",
    },
    {
      "image": "assets/images/c4.jpg",
    },
    {
      "image": "assets/images/c5.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
          itemCount: data.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Row(
              children: [
                Container(
                  width: 160,
                  height: 250,
                  decoration: BoxDecoration(
                    color: const Color(0xff242931),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        data[index]["image"],
                        fit: BoxFit.cover,
                        width: 120,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
              ],
            );
          }),
    );
  }
}

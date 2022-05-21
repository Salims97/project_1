
import 'package:flutter/material.dart';

class CategorieIcon extends StatelessWidget {
  const CategorieIcon({
    required this.name,
    required this.image,
  });

  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            return null;
          },
          child: Container(
            width: MediaQuery.of(context).size.width * .20,
            height: MediaQuery.of(context).size.height * .1,
            decoration: const BoxDecoration(
                color: Color.fromARGB(175, 196, 203, 214),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Center(child: Image.asset(image,width: MediaQuery.of(context).size.width*.17 ,height: MediaQuery.of(context).size.height*.17,)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            name,
            style: TextStyle(color: Color.fromARGB(198, 255, 255, 255)),
          ),
        )
      ],
    );
  }
}

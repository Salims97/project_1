import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:readmore/readmore.dart';

import '../widgets/row_of_details.dart';

class Details extends ConsumerWidget {
  Color theme = const Color.fromARGB(255, 11, 50, 82);

  Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Image.asset(
              "assets/images/profile.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            transform: Matrix4.translationValues(0, -20, 0),
            width: double.infinity,

            //height: double.infinity,
            decoration:const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25), topLeft: Radius.circular(25)),
            ),

            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                const  Text(
                    "Help abandoned animals",
                    style: TextStyle(fontSize: 20),
                  ), //2sm al 7amleh
              const    Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: ReadMoreText(
                      "bla bla bla bla bla bla sadlasjd aasss dns awldl asdasd lknalks  dsadas kdlaksd lasd a asdlksd dsmasd  dsmas ,d adasd sda sa askdjn aw kan samo when we are use thiss Annnnnddddddd iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii Willlllllllllllllllllllllllllllllllllll alwaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaayssss loooooveeeeeeeeeeeeeeeeeeeeee youuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu",
                      trimLines: 2,
                      colorClickableText: Colors.blue,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: "Read more",
                      trimExpandedText: "Less",
                      style: TextStyle(fontSize: 10),
                    ),
                  ), //shr7 3nha
                  RowOfDetails(theme: theme),
                const  Text("Charity Target"),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text("900/6000"),
                           LinearPercentIndicator(
                            width: 140.0,
                            lineHeight: 4.0,
                            percent: 0.5,
                            backgroundColor: Colors.grey,
                            progressColor: Colors.blue,
                            trailing:const Text("50%"),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


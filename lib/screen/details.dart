import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:project_1/models/app_colors.dart';
import 'package:readmore/readmore.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../widgets/row_of_details.dart';

class Details extends ConsumerWidget {
  Color theme = Color.fromARGB(255, 11, 50, 82);

  Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .5,
              child: Image.asset(
                "assets/images/firstvolunteer.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              transform: Matrix4.translationValues(0, -23, 0),
              width: double.infinity,

              //height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25)),
              ),

              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Help abandoned animals",
                      style: TextStyle(fontSize: 20,color: AppColors.darkBlue3),
                    ), //2sm al 7amleh
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: ReadMoreText(
                        "Rainforest Trust is a world leader in the protection of tropical ecosystems and wildlife. Our simple yet highly effective, solution to stop the destruction of the last remaining rainforests has a positive impact on endangered species, communities and the planet. Working in partnership with local conservation and community groups, Rainforest Trust has protected over 18 million acres of rainforest from destruction across South America, Asia/Pacific and Africa since 1988.",
                        trimLines: 2,
                        colorClickableText: Colors.blue,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: "Read more",
                        trimExpandedText: "Less",
                        style: TextStyle(fontSize: 13),
                      ),
                    ), //shr7 3nha
                    RowOfDetails(theme: theme),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Rating",
                              style: TextStyle(fontSize: 15),
                            ),
                            RatingBar.builder(
                              itemSize: 28,
                              initialRating: 3,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding: EdgeInsets.symmetric(
                                  horizontal: 3.0, vertical: 1.0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(Icons.location_on_outlined),
                                  Text("Location:  Homs,Wadi Al-oyun"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text("      Charity Target  "),
                                  Text("10/20"),
                                  LinearPercentIndicator(
                                    width: 140.0,
                                    lineHeight: 4.0,
                                    percent: 0.5,
                                    backgroundColor: Colors.grey,
                                    progressColor: Colors.blue,
                                    trailing: Text("50%"),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 129, vertical: 8.0),
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text("Volunteer"),
                                style: ButtonStyle(
                                    alignment: Alignment.center,
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.green)),
                              ),
                            )
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
      ),
    );
  }
}

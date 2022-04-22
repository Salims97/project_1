// import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/categorie_icon.dart';

class Home extends ConsumerWidget {
  String dropdownValue = 'Popular';
  Color theme = Color.fromARGB(255, 11, 50, 82);

  Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              color: theme,
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                          child: Text("Hi, Sami",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(231, 255, 255, 255))),
                        ),
                        Text(
                          "Lest,s Start spreading goodness..",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Color.fromARGB(255, 152, 183, 209),
                          ),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.blueAccent,

                      //backgroundImage:
                      radius: 20,
                      backgroundImage: AssetImage(
                        "assets/images/profile.jpg",
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: TextField(
                    //style: TextStyle(color: Colors.red),
                    decoration: InputDecoration(
                        hintText: "Try 'child' now",
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.white, width: 2.0),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () => null,
                          icon: Icon(Icons.search),
                          color: Colors.lightGreen,
                        ),
                        fillColor: Color.fromARGB(255, 196, 203, 214),
                        filled: true),
                    //serach
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(bottom: 10),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Categories",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(198, 255, 255, 255)),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //squer widget
                  children: [
                    CategorieIcon(
                      name: "Health",
                      image: "assets/images/profile.jpg", /*On tap*/
                    ),
                    CategorieIcon(
                        name: "Food", image: "assets/images/profile.jpg"),
                    CategorieIcon(
                        name: "Money", image: "assets/images/profile.jpg"),
                    CategorieIcon(
                        name: "more", image: "assets/images/profile.jpg"),
                  ],
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Trending Donation',
                    style: TextStyle(fontSize: 20, color: theme),
                  ),
                  DropdownButton<String>(
                    value: dropdownValue,
                    icon: const Icon(Icons.arrow_downward),
                    elevation: 16,
                    style: const TextStyle(color: Colors.deepPurple),
                    underline: Container(
                      height: 2,
                      color: Colors.deepPurpleAccent,
                    ),
                    onChanged: (String? newValue) {
                      // setState(() {
                      //   dropdownValue = newValue!;
                      // });
                    },
                    items: <String>['Popular', 'End soon', 'Expensive', 'Free']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () => Navigator.of(context).pushNamed("/details"),
              child: Card(
                margin: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                        child: Image.asset(
                      "assets/images/profile.jpg",
                      alignment: Alignment.centerLeft,
                      fit: BoxFit.cover,
                    )),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Help abandoned animals"), //2sm al 7mleh
                          Row(
                            children: [
                              Icon(Icons.abc),
                              Text('animal Kaiser'),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.abc),
                              Text('2 days left'),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.abc),
                              Text(" 1000.000.000 U.S "),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


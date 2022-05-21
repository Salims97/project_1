import 'package:flutter/material.dart';

class RowOfDetails extends StatelessWidget {
  const RowOfDetails({
    Key? key,
    required this.theme,
  }) : super(key: key);

  final Color theme;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
<<<<<<< HEAD
              Padding(
                padding: const EdgeInsets.only(right: 4),
                child: Icon(Icons.category_outlined),
=======
              const Padding(
                padding:  EdgeInsets.only(right: 4),
                child: Icon(Icons.mark_email_read_outlined),
>>>>>>> c940bb03426c73422ac0ccf982694fda7fb1da23
              ),
              Column(
                children: [
                  const Text(
                    "Categories",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "Animal", //بيتغير
                    style: TextStyle(color: theme),
                  )
                ],
              )
            ],
          ),
          const VerticalDivider(
            width: 10,
            thickness: 1,
            indent: 5,
            endIndent: 0,
            color: Colors.grey,
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 4),
                child: Icon(Icons.calendar_month_outlined),
              ),
              Column(
                children: [
                  const Text(
                    "Days left",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "24", //بيتغير
                    style: TextStyle(color: theme),
                  )
                ],
              )
            ],
          ),
          const VerticalDivider(
            width: 10,
            thickness: 1,
            indent: 5,
            endIndent: 0,
            color: Colors.grey,
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 4),
                child: Icon(Icons.volunteer_activism_outlined),
              ),
              Column(
                children: [
<<<<<<< HEAD
                  Text(
                    "Volunteer",
=======
                  const Text(
                    "Donation",
>>>>>>> c940bb03426c73422ac0ccf982694fda7fb1da23
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "Featured", //بيتغير
                    style: TextStyle(color: theme),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

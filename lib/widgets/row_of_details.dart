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
              Padding(
                padding: const EdgeInsets.only(right: 4),
                child: Icon(Icons.category_outlined),
              ),
              Column(
                children: [
                  Text(
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
          VerticalDivider(
            width: 10,
            thickness: 1,
            indent: 5,
            endIndent: 0,
            color: Colors.grey,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 4),
                child: Icon(Icons.calendar_month_outlined),
              ),
              Column(
                children: [
                  Text(
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
          VerticalDivider(
            width: 10,
            thickness: 1,
            indent: 5,
            endIndent: 0,
            color: Colors.grey,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 4),
                child: Icon(Icons.volunteer_activism_outlined),
              ),
              Column(
                children: [
                  Text(
                    "Volunteer",
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

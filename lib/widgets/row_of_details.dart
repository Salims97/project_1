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
              const Padding(
                padding:  EdgeInsets.only(right: 4),
                child: Icon(Icons.mark_email_read_outlined),
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
                child: Icon(Icons.mark_email_read_outlined),
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
                child: Icon(Icons.mark_email_read_outlined),
              ),
              Column(
                children: [
                  const Text(
                    "Donation",
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


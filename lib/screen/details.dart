import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Details extends ConsumerWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Image.asset(
                "assets/images/profile.jpg",
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20)),
                ),
                child: Text('details'),
              )
            ],
          ),
        ],
      ),
    );
  }
}

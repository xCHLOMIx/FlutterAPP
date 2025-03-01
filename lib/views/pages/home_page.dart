import 'package:flutter/material.dart';
import 'package:flutter_app/data/constants.dart';
import 'package:flutter_app/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const HeroWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Card(
              child: Container(
                padding: const EdgeInsets.all(20.0),
                width: double.infinity,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Basic Layout",
                      style: KTestStyle.titleTealText,
                    ),
                    Text(
                      "The description of this",
                      style: KTestStyle.desciptionText,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

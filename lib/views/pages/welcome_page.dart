import 'package:flutter/material.dart';
import 'package:flutter_app/views/widget_tree.dart';
import 'package:flutter_app/widgets/hero_widget.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const HeroWidget(),
              const SizedBox(
                height: 15.0,
              ),
              FilledButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const WidgetTree();
                      },
                    ),
                  );
                },
                // ignore: prefer_const_constructors
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 12.0,
                    left: 12.0,
                    top: 15.0,
                    bottom: 15.0,
                  ),
                  child: const Text("Login"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

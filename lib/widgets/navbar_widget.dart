import 'package:flutter/material.dart';
import 'package:flutter_app/data/notifiers.dart';

class NavbarWidget extends StatefulWidget {
  const NavbarWidget({super.key});

  @override
  State<NavbarWidget> createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPageNotifier,
      builder: (context, value, child) {
        return Container(
          margin: const EdgeInsets.all(30.0),
          decoration: BoxDecoration(
            color: isDarkModeNotifier.value
                ? const Color.fromRGBO(255, 255, 255, 0.1)
                : Colors.teal[100],
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: NavigationBar(
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              NavigationDestination(
                icon: Icon(Icons.person),
                label: "Profile",
              ),
            ],
            backgroundColor: const Color.fromRGBO(
              255,
              255,
              255,
              0.0,
            ),
            selectedIndex: selectedPageNotifier.value,
            onDestinationSelected: (value) {
              selectedPageNotifier.value = value;
            },
          ),
        );
      },
    );
  }
}

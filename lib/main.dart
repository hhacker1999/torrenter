import 'package:flutter/material.dart';
import 'package:torrenter/presentation/home_view/home_view.dart';

void main() {
  runApp(const Torrenter());
}

class Torrenter extends StatelessWidget {
  const Torrenter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Torrenter",
      home: HomeView(),
    );
  }
}

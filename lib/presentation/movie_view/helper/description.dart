import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  final String desc;
  const Description({Key? key, required this.desc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Description",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        const SizedBox(
          height: 18,
        ),
        Text(
          desc,
          textAlign: TextAlign.justify,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 21,
          ),
        ),
      ],
    );
  }
}

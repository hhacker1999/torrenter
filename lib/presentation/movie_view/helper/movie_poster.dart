import 'package:flutter/material.dart';

class MoviePoster extends StatelessWidget {
  final double height;
  final double width;
  final String image;
  const MoviePoster(
      {Key? key,
      required this.width,
      required this.image,
      required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Image.network(
        image,
        height: height,
        width: width,
        fit: BoxFit.cover,
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'custom_ratings_indicator.dart';

class MovieItem extends StatelessWidget {
  final String title;
  final String image;
  final double rating;
  const MovieItem(
      {Key? key,
      required this.title,
      required this.image,
      required this.rating})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                image,
                width: double.maxFinite,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            child: Text(
              title,
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          CustomRatingsIndicator(ratings: rating)
        ],
      ),
    );
  }
}

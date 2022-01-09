import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomRatingsIndicator extends StatelessWidget {
  final double ratings;
  const CustomRatingsIndicator({Key? key, required this.ratings})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 18,
      child: RatingBarIndicator(
        itemCount: 5,
        rating: ratings / 2,
        itemSize: 18,
        unratedColor: Colors.amber.withOpacity(0.5),
        itemBuilder: (_, __) => const Icon(
          Icons.star,
          color: Colors.amber,
        ),
      ),
    );
  }
}

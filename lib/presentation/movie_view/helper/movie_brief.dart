import 'package:flutter/material.dart';

import 'genre_card.dart';

class MovieBrief extends StatelessWidget {
  final String title;
  final String year;
  final double rating;
  final List<String> genre;
  const MovieBrief(
      {Key? key,
      required this.genre,
      required this.rating,
      required this.title,
      required this.year})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 25),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              year,
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
            const VerticalDivider(
              color: Colors.white,
              thickness: 10,
            ),
            Text(
              rating.toString(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            const Icon(
              Icons.star,
              size: 20,
              color: Colors.amber,
            ),
          ],
        ),
        const SizedBox(
          height: 18,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: genre
              .map(
                (genre) => GenreCard(genre: genre),
              )
              .toList(),
        ),
      ],
    );
  }
}

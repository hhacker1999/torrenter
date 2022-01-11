import 'package:flutter/material.dart';
import 'package:torrenter/app/constants.dart';

class GenreCard extends StatelessWidget {
  final String genre;
  const GenreCard({Key? key, required this.genre}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppConstants.whiteGrey,
        borderRadius: BorderRadiusDirectional.circular(25),
      ),
      child: Text(
        genre,
        style: const TextStyle(color: Colors.white, fontSize: 13),
      ),
    );
  }
}

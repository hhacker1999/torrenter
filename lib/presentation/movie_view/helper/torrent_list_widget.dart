import 'package:flutter/material.dart';
import 'package:torrenter/app/constants.dart';
import 'package:torrenter/domain/entity/movie_entity.dart';
import 'package:torrenter/domain/entity/torrent_entity.dart';

class TorrentListWidget extends StatelessWidget {
  const TorrentListWidget({
    Key? key,
    required this.movie,
    required this.onTap,
  }) : super(key: key);

  final MovieEntity movie;
  final void Function(TorrentEntity) onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: const EdgeInsets.all(50),
        color: AppConstants.purple,
        alignment: Alignment.center,
        child: ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (_, index) => const SizedBox(
            height: 12,
          ),
          itemCount: movie.torrents.length,
          itemBuilder: (_, index) {
            return GestureDetector(
              onTap: () => onTap(movie.torrents[index]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    movie.torrents[index].quality,
                    style: const TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    movie.torrents[index].seeds.toString(),
                    style: const TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    movie.torrents[index].size,
                    style: const TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            );
          },
        ));
  }
}

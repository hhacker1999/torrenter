import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torrenter/app/constants.dart';
import 'package:torrenter/domain/entity/movie_entity.dart';
import 'package:torrenter/domain/entity/torrent_entity.dart';
import 'package:torrenter/presentation/movie_view/view_model/movie_view_bloc.dart';
import 'helper/description.dart';
import 'helper/movie_brief.dart';
import 'helper/movie_poster.dart';
import 'helper/select_torrent_widget.dart';
import 'helper/torrent_list_widget.dart';

class MovieView extends StatelessWidget {
  final MovieEntity movie;
  const MovieView({Key? key, required this.movie}) : super(key: key);

  void downloadDialog(
      BuildContext context, void Function(TorrentEntity torrent) tap) {
    showDialog(
      context: context,
      builder: (_) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SelectTorrentWidget(),
              TorrentListWidget(
                movie: movie,
                onTap: (e) {
                  Navigator.pop(context);
                  tap(e);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConstants.purple,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          movie.title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: AppConstants.purple,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: LayoutBuilder(
            builder: (_, constr) {
              return BlocBuilder<MovieViewBloc, bool>(builder: (_, state) {
                return Stack(
                  children: [
                    Positioned.fill(
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: MoviePoster(
                                width: constr.maxWidth * 0.75,
                                image: movie.largeCoverImage,
                                height: constr.maxHeight * 0.50,
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            MovieBrief(
                              genre: movie.genres,
                              rating: movie.rating / 2,
                              title: movie.titleLong,
                              year: movie.year.toString(),
                            ),
                            const SizedBox(
                              height: 18,
                            ),
                            Description(
                              desc: movie.descriptionFull,
                            ),
                            const SizedBox(
                              height: 100,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        width: constr.maxWidth,
                        height: 80,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Colors.transparent, AppConstants.purple],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<OutlinedBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              padding:
                                  MaterialStateProperty.all<EdgeInsetsGeometry>(
                                const EdgeInsets.symmetric(
                                    vertical: 22, horizontal: 60),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                const Color(0xFF2F3FBB),
                              ),
                            ),
                            onPressed: () {
                              downloadDialog(
                                context,
                                (tor) => BlocProvider.of<MovieViewBloc>(context,
                                        listen: false)
                                    .add(
                                  MovieBlocDownloadEvent(tor),
                                ),
                              );
                            },
                            child: const Text(
                              "Download",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    if (state)
                      Positioned.fill(
                        child: Container(
                          color: Colors.transparent,
                          child: const Center(
                            child: CircularProgressIndicator(
                              color: Colors.white,
                              strokeWidth: 2,
                            ),
                          ),
                        ),
                      ),
                  ],
                );
              });
            },
          ),
        ),
      ),
    );
  }
}

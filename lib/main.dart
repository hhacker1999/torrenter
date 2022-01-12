import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torrenter/app/constants.dart';
import 'package:torrenter/app/dependencies.dart';
import 'package:torrenter/domain/entity/movie_entity.dart';
import 'package:torrenter/presentation/home_view/home_view.dart';
import 'package:torrenter/presentation/home_view/view_model/home_view_event.dart';
import 'package:torrenter/presentation/movie_view/movie_view.dart';
import 'package:torrenter/presentation/movie_view/view_model/movie_view_bloc.dart';

import 'presentation/home_view/view_model/home_view_bloc.dart';

void main() {
  runApp(const Torrenter());
}

class Torrenter extends StatefulWidget {
  const Torrenter({Key? key}) : super(key: key);

  @override
  State<Torrenter> createState() => _TorrenterState();
}

class _TorrenterState extends State<Torrenter> {
  late AppDependencies _dependencies;
  @override
  void initState() {
    super.initState();
    _dependencies = AppDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (route) {
        final String? name = route.name;
        switch (name!) {
          case AppConstants.homeRoute:
            {
              return MaterialPageRoute(
                builder: (_) {
                  return BlocProvider<HomeViewBloc>(
                    create: (_) => HomeViewBloc(
                      getMoviesUsecase: _dependencies.getMoviesUsecase,
                      searchMovieUseCase: _dependencies.searchMovieUseCase,
                    )..add(const HomeViewEvent.loadPages()),
                    child: const HomeView(),
                  );
                },
              );
            }
          case AppConstants.movieRoute:
            final MovieEntity args = route.arguments as MovieEntity;
            {
              return MaterialPageRoute(
                builder: (_) {
                  return BlocProvider<MovieViewBloc>(
                    create: (_) =>
                        MovieViewBloc(_dependencies.downloadTorrentFileUsecase),
                    child: MovieView(
                      movie: args,
                    ),
                  );
                },
              );
            }
        }
      },
      title: "Torrenter",
      initialRoute: AppConstants.homeRoute,
    );
  }
}

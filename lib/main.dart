import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torrenter/app/dependencies.dart';
import 'package:torrenter/presentation/home_view/home_view.dart';
import 'package:torrenter/presentation/home_view/view_model/home_view_event.dart';

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
      title: "Torrenter",
      home: BlocProvider<HomeViewBloc>(
        create: (_) => HomeViewBloc(
          getMoviesUsecase: _dependencies.getMoviesUsecase,
        )..add(const HomeViewEvent.loadPages()),
        child: const HomeView(),
      ),
    );
  }
}

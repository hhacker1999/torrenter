import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:torrenter/app/dependencies.dart';
import 'package:torrenter/presentation/home_view/home_view.dart';
import 'presentation/home_view/view_model/home_view_model.dart';

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
      home: Provider<HomeViewModel>(
          create: (_) => HomeViewModel(
                getMoviesUsecase: _dependencies.getMoviesUsecase,
              ),
          dispose: (_, model) => model.dispose(),
          child: const HomeView()),
    );
  }
}

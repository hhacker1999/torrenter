import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torrenter/app/constants.dart';
import 'package:torrenter/presentation/home_view/view_model/home_view_event.dart';
import 'package:torrenter/presentation/home_view/view_model/home_view_state.dart';

import 'helper/movie_item.dart';
import 'view_model/home_view_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late TextEditingController _movieController;
  @override
  void initState() {
    super.initState();
    _movieController = TextEditingController();
  }

  @override
  void dispose() {
    _movieController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.purple,
      body: SafeArea(
        child: BlocBuilder<HomeViewBloc, HomeViewState>(
          builder: (_, HomeViewState state) {
            return state.when(
              movieLoading: () => const Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                  strokeWidth: 2,
                ),
              ),
              loading: () => const Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: Colors.white,
                ),
              ),
              error: (s) => Center(
                child: Text(s, style: TextStyle(color: Colors.white)),
              ),
              loaded: (data) => Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 2, horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "Torrenter!",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextField(
                      onChanged: (s) {
                        if (s.isEmpty) {
                          BlocProvider.of<HomeViewBloc>(context)
                              .add(HomeViewEvent.searchMovie(s));
                        }
                      },
                      onSubmitted: (s) {
                        FocusScope.of(context).unfocus();
                        BlocProvider.of<HomeViewBloc>(context)
                            .add(HomeViewEvent.searchMovie(s));
                      },
                      controller: _movieController,
                      keyboardType: TextInputType.text,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Search movie",
                        hintStyle: TextStyle(color: AppConstants.whiteGrey),
                        prefixIcon: Icon(
                          Icons.search,
                          color: AppConstants.whiteGrey,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.white),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: AppConstants.whiteGrey),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "Popular Movies",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: GridView.builder(
                        physics: const BouncingScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 3 / 4,
                                mainAxisSpacing: 10,
                                crossAxisSpacing: 10),
                        itemCount: data.length,
                        itemBuilder: (_, index) => GestureDetector(
                          onTap: () => Navigator.pushNamed(
                            context,
                            AppConstants.movieRoute,
                            arguments: data[index],
                          ),
                          child: MovieItem(
                            title: data[index].title,
                            image: data[index].mediumCoverImage,
                            rating: data[index].rating,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

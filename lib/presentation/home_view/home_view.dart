import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:torrenter/app/constants.dart';
import 'package:torrenter/presentation/home_view/view_model/home_view_model.dart';
import 'package:torrenter/presentation/home_view/view_model/home_view_state.dart';

import 'helper/movie_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeViewModel>(
      builder: (_, model, __) {
        return Scaffold(
          backgroundColor: const Color(0xFF070D2D),
          body: SafeArea(
            child: StreamBuilder(
              stream: model.stateStream,
              initialData: model.stateStream.value,
              builder: (_, snap) {
                if (snap.data is HomeViewStateError) {
                  return Center(
                    child: Text(
                      (snap.data as HomeViewStateError).error,
                    ),
                  );
                } else if (snap.data is HomeViewStateLoaded) {
                  final data = snap.data as HomeViewStateLoaded;
                  return Padding(
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
                              borderSide:
                                  BorderSide(color: AppConstants.whiteGrey),
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
                            itemCount: data.movies.length,
                            itemBuilder: (_, index) => MovieItem(
                              title: data.movies[index].title,
                              image: data.movies[index].mediumCoverImage,
                              rating: data.movies[index].rating,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
          ),
        );
      },
    );
  }
}



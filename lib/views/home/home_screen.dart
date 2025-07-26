import 'package:bloc_clean_coding/bloc/movies_bloc/movies_bloc.dart';
import 'package:bloc_clean_coding/config/Routes/route_names.dart';
import 'package:bloc_clean_coding/config/components/no_internet_widget.dart';
import 'package:bloc_clean_coding/main.dart';
import 'package:bloc_clean_coding/service/session/session_manager.dart';
import 'package:bloc_clean_coding/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late MoviesBloc moviesBloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    moviesBloc = MoviesBloc(moviesRepository: getIt());
  }

  @override
  void dispose() {
    // TODO: implement dispose

    moviesBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomeScreen"),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                RouteNames.loginScreen,
                (route) => false,
              );
              Future.delayed(const Duration(milliseconds: 100), () {
                SessionManager().clearData();
              });
            },
          ),
        ],
      ),
      body: BlocProvider(
        create: (_) =>
            MoviesBloc(moviesRepository: getIt())..add(MoviesFetchedEvent()),
        child: BlocBuilder<MoviesBloc, MoviesState>(
          builder: (context, state) {
            print(state.moviesList.message);
            switch (state.moviesList.status) {
              case PostApiStatus.loading:
                return const Center(child: CircularProgressIndicator());

              case PostApiStatus.error:
                if (state.moviesList.message == ".No Data Connection") {
                  return Center(
                    child: NoInternetWidget(onPressed: () {
                      moviesBloc.add(MoviesFetchedEvent());
                    }),
                  );
                } else {
                  return Center(
                    child: Text(
                      state.moviesList.message ?? "Unknown error",
                      style: const TextStyle(color: Colors.red),
                    ),
                  );
                }

              case PostApiStatus.success:
                if (state.moviesList.data == null ||
                    state.moviesList.data!.tvShows.isEmpty) {
                  return const Center(child: Text("No movies found."));
                }

                final movieList = state.moviesList.data!;
                return ListView.builder(
                  itemCount: movieList.tvShows.length,
                  itemBuilder: (context, index) {
                    final tvShow = movieList.tvShows[index];
                    return Card(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 6),
                      child: ListTile(
                        title: Text(tvShow.name ?? "No Name"),
                        subtitle: Text(tvShow.network ?? "Unknown Network"),
                        trailing: Column(
                          children: [
                            Container(
                                height: 40,
                                width: 40,
                                child:
                                    Image.network(tvShow.imageThumbnailPath)),
                            Text(tvShow.status ?? ""),
                          ],
                        ),
                      ),
                    );
                  },
                );

              default:
                return const SizedBox(); // fallback
            }
          },
        ),
      ),
    );
  }
}

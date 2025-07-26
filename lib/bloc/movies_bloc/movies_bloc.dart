import 'package:bloc/bloc.dart';
import 'package:bloc_clean_coding/bloc/login/login_bloc.dart';
import 'package:bloc_clean_coding/data/response/api_response.dart';
import 'package:bloc_clean_coding/repository/movies/movies_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/movies/movies_model.dart';

part 'movies_event.dart';
part 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  MoviesRepository moviesRepository;
  MoviesBloc({required this.moviesRepository})
      : super(MoviesState(moviesList: ApiResponse.loading())) {
    on<MoviesFetchedEvent>(_fetchMovieEvent);
  }

  Future<void> _fetchMovieEvent(
      MoviesFetchedEvent event, Emitter<MoviesState> emit) async {
    try {
      final value = await moviesRepository.fetchMovies();
      print("values after fetch : $value");
      emit(state.copyWith(moviesList: ApiResponse.success(value)));
    } catch (e) {
      emit(state.copyWith(moviesList: ApiResponse.error(e.toString())));
    }
  }
}

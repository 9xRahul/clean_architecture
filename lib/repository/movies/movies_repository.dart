import 'package:bloc_clean_coding/models/movies/movies_model.dart';

abstract class MoviesRepository {
  Future<MoviesModel> fetchMovies();
}

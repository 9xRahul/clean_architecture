import 'package:bloc_clean_coding/config/urls/app_urls.dart';
import 'package:bloc_clean_coding/data/network/network_service_api.dart';
import 'package:bloc_clean_coding/models/movies/movies_model.dart';
import 'package:bloc_clean_coding/repository/movies/movies_repository.dart';

class MoviesHttpApiRepository implements MoviesRepository {
  final _apiService = NetworkServicesApi();

  @override
  Future<MoviesModel> fetchMovies() async {
    final response = await _apiService.getApi(url: AppUrls.moviesApiEndPoint);

    return MoviesModel.fromJson(response);
  }
}

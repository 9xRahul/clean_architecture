import 'package:bloc_clean_coding/models/user/user_model.dart';
import 'package:bloc_clean_coding/repository/auth/login_repository.dart';

import '../../config/urls/app_urls.dart';
import '../../data/network/network_service_api.dart';

class LoginHttpAPiRepository implements LoginRepository {
  final _api = NetworkServicesApi();

  @override
  Future<UserModel> loginApi({required dynamic data}) async {
    // TODO: implement loginApi
    Map<String, dynamic> response =
        await _api.postApi(url: AppUrls.loginApi, data: data);

    return UserModel.fromJson(response);
  }
}

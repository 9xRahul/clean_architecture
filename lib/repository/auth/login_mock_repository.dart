import 'package:bloc_clean_coding/models/user/user_model.dart';
import 'package:bloc_clean_coding/repository/auth/login_repository.dart';

import '../../config/urls/app_urls.dart';
import '../../data/network/network_service_api.dart';

class LoginMockRepository implements LoginRepository {
  @override
  Future<UserModel> loginApi({required dynamic data}) async {
    Future.delayed(Duration(seconds: 3));

    Map<String, dynamic> response = {"token": "rahul@token"};

    return UserModel.fromJson(response);
  }
}

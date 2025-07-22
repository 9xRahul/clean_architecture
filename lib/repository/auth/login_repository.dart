import 'package:bloc_clean_coding/models/user/user_model.dart';

import '../../config/urls/app_urls.dart';
import '../../data/network/network_service_api.dart';

abstract class LoginRepository {
  Future<UserModel> loginApi({required dynamic data});
}

import 'package:bloc_clean_coding/utils/enums.dart';

class ApiResponse<T> {
  PostApiStatus? status;
  T? data;
  String? message;

  ApiResponse(this.data, this.message, this.status);

  ApiResponse.loading() : status = PostApiStatus.loading;
  ApiResponse.success(this.data) : status = PostApiStatus.success;
  ApiResponse.error(this.message) : status = PostApiStatus.error;
}


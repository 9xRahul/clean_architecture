abstract class BaseApiServices {
  Future<dynamic> postApi({required String url, required var data});
  Future<dynamic> getApi({required String url});
}

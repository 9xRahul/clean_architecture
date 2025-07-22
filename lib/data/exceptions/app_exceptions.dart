class AppExceptions implements Exception {
  final _messgae;
  final _prefix;
  AppExceptions([this._messgae, this._prefix]);
  @override
  String toString() {
    return "$_messgae.$_prefix";
  }
}

class NoInternetException extends AppExceptions {
  NoInternetException([String? message]) : super("", "No Data Connection");
}

class TimeoutException extends AppExceptions {
  TimeoutException([String? message]) : super(message, "");
}

class FetchDataException extends AppExceptions {
  FetchDataException([String? message]) : super(message, "");
}

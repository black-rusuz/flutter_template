import '../data/http_helper.dart';

abstract class ApiSource {
  final HttpHelper _http;

  ApiSource(this._http);
}

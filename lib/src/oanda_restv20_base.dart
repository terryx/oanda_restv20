import 'package:http/http.dart' as http;

/// Prod: api-fxtrade.oanda.com
///
/// Demo: api-fxpractice.oanda.com
enum OandaEnv {
  prod('api-fxtrade.oanda.com'),
  demo('api-fxpractice.oanda.com');

  const OandaEnv(this.endpoint);

  final String endpoint;
}

class OandaClient extends http.BaseClient {
  /// Create custom client that conceal token and base URL
  OandaClient({
    required String token,
    required OandaEnv env,
    this.userAgent,
  })  : _token = token,
        _env = env;

  static http.Client httpClient = http.Client();
  final String? userAgent;
  final String _token;
  final OandaEnv _env;

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    final redirect = http.Request(request.method,
        request.url.replace(scheme: 'https', host: _env.endpoint));
    redirect.headers['Authorization'] = 'Bearer $_token';
    redirect.headers['user-agent'] ?? userAgent;

    return httpClient.send(redirect);
  }
}

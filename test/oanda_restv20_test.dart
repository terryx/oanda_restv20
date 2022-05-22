import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:oanda_restv20/oanda_restv20.dart';
import 'package:test/test.dart';

void main() {
  group('API Client Test', () {
    test('Fetch accounts with base client', () async {
      OandaClient.httpClient = MockClient(
        (request) async => http.Response('{}', 200, request: request),
      );

      final oanda = OandaClient(token: '', env: OandaEnv.demo);

      final Uri uri = Uri(path: '/v3/accounts');
      final http.Response res = await oanda.get(uri);
      final Map<String, dynamic> jsonMap = jsonDecode(res.body);

      expect(res.request?.url.path, uri.path);
      expect(jsonMap, {});
    });
  });
}

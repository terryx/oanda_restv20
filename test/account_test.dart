import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:oanda_restv20/oanda_restv20.dart';
import 'package:test/test.dart';

void main() {
  group('Accounts tests', () {
    final raw = '''
    {
      "accounts": [
        {
          "id": "000-00000-000",
          "tags": []
        },
        {
          "id": "000-00000-001",
          "tags": []
        }
      ]
    }
    ''';

    test('Parse accounts', () {
      final accList = Accounts.fromJson(jsonDecode(raw));

      expect(accList.accounts?[0].id, '000-00000-000');
    });

    test('Fetch accounts', () async {
      OandaClient.httpClient = MockClient(
        (request) async => http.Response(raw, 200, request: request),
      );

      final token = '';
      final oandaClient = OandaClient(token: token, env: OandaEnv.demo);

      final oanda = OandaAPI(oandaClient);
      final res = await oanda.accounts();

      expect(res.accounts?.first.id, '000-00000-000');
    });

    test('Fetch one account', () async {
      OandaClient.httpClient = MockClient((request) async => http.Response('''
           {
              "account": {
                 "id": "a"
              }
           }
           ''', 200, request: request));

      final token = '';
      final oandaClient = OandaClient(token: token, env: OandaEnv.demo);

      final oanda = OandaAPI(oandaClient);
      final res = await oanda.account('a');
      final id = res.account?.id;

      expect(id, 'a');
    });

    test('Fetch account summary', () async {
      OandaClient.httpClient = MockClient((request) async => http.Response('''
           {
              "account": {
                 "id": "a"
              }
           }
           ''', 200, request: request));

      final token = '';
      final oandaClient = OandaClient(token: token, env: OandaEnv.demo);

      final oanda = OandaAPI(oandaClient);
      final res = await oanda.accountSummary('a');
      final id = res.account?.id;

      expect(id, 'a');
    });
  });
}

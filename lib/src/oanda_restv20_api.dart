import 'dart:convert';

import 'package:oanda_restv20/oanda_restv20.dart';
import 'package:oanda_restv20/src/account/account.dart';

class OandaAPI {
  OandaAPI(this.client);

  OandaClient client;

  Future<T> _fetch<T>(Uri uri, Function handler) async {
    final res = await client.get(uri);
    final jsonMap = jsonDecode(res.body);

    return handler(jsonMap);
  }

  Future<Accounts> accounts() async => _fetch(
        Uri(path: '/v3/accounts'),
        Accounts.fromJson,
      );

  Future<CurrentAccount> account(String id) async => _fetch<CurrentAccount>(
        Uri(path: '/v3/accounts/$id'),
        CurrentAccount.fromJson,
      );

Future<CurrentAccount> accountSummary(String id) async =>
    _fetch<CurrentAccount>(
      Uri(path: '/v3/accounts/$id/summary'),
      CurrentAccount.fromJson,
    );
}

class Accounts {
  /// GET /v3/accounts
  ///
  /// Get a list of all accounts authorized for the provided token.
  Accounts.fromJson(Map<String, dynamic> json)
      : accounts = json['accounts'] == null
            ? null
            : List<Map<String, dynamic>>.from(json['accounts'])
                .map((dynamic value) => Account.fromJson(value))
                .toList();

  final List<Account>? accounts;
}

class Account {
  Account.fromJson(Map<String, dynamic> json) : id = json['id'];

  final String? id;
}




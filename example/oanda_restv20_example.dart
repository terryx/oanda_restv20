import 'package:oanda_restv20/oanda_restv20.dart';

void main() async {
    final token = 'replace_with_API_key';
    final client = OandaClient(token: token, env: OandaEnv.demo);
    final api = OandaAPI(client);
    final res = await api.account('replace_with_accountID');
    final id = res.account?.id;

    print(id);
}

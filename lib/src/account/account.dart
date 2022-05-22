class CurrentAccount {
  /// GET	/v3/accounts/{accountID}
  ///
  /// Get the full details for a single Account that a client has access to.
  /// Full pending Order, open Trade and open Position representations are provided.
  CurrentAccount.fromJson(Map<String, dynamic> json)
      : account =
            json['account'] == null ? null : Account.fromJson(json['account']),
        lastTransactionID = json['lastTransactionID'];

  final Account? account;
  final String? lastTransactionID;
}

class Account {
  Account.fromJson(Map<String, dynamic> json)
      : guaranteedStopLossOrderMode = json['guaranteedStopLossOrderMode'],
        hedgingEnabled = json['hedgingEnabled'],
        id = json['id'],
        createdTime = json['createdTime'],
        currency = json['currency'],
        createdByUserID = json['createdByUserID'],
        alias = json['alias'],
        marginRate = json['marginRate'],
        lastTransactionID = json['lastTransactionID'],
        balance = json['balance'],
        openTradeCount = json['openTradeCount'],
        openPositionCount = json['openPositionCount'],
        pendingOrderCount = json['pendingOrderCount'],
        pl = json['pl'],
        resettablePL = json['resettablePL'],
        resettablePLTime = json['resettablePLTime'],
        financing = json['financing'],
        commission = json['commission'],
        dividendAdjustment = json['dividendAdjustment'],
        guaranteedExecutionFees = json['guaranteedExecutionFees'],
        lastDividendAdjustmentTimestamps =
            json['lastDividendAdjustmentTimestamps'] == null
                ? null
                : List<Map<String, dynamic>>.from(
                        json['lastDividendAdjustmentTimestamps'])
                    .map((dynamic value) =>
                        LastDividendAdjustmentTimestamps.fromJson(value))
                    .toList(),
        positions = json['positions'] == null
            ? null
            : List<Map<String, dynamic>>.from(json['positions'])
                .map((dynamic value) => Positions.fromJson(value))
                .toList(),
        trades = json['trades'] == null
            ? null
            : List<Map<String, dynamic>>.from(json['trades'])
                .map((dynamic value) => Trades.fromJson(value))
                .toList(),
        unrealizedPL = json['unrealizedPL'],
        nav = json['nav'],
        marginUsed = json['marginUsed'],
        marginAvailable = json['marginAvailable'],
        positionValue = json['positionValue'],
        marginCloseoutUnrealizedPL = json['marginCloseoutUnrealizedPL'],
        marginCloseoutNAV = json['marginCloseoutNAV'],
        marginCloseoutMarginUsed = json['marginCloseoutMarginUsed'],
        marginCloseoutPositionValue = json['marginCloseoutPositionValue'],
        marginCloseoutPercent = json['marginCloseoutPercent'],
        withdrawalLimit = json['withdrawalLimit'],
        marginCallMarginUsed = json['marginCallMarginUsed'],
        marginCallPercent = json['marginCallPercent'];

  final String? guaranteedStopLossOrderMode;
  final bool? hedgingEnabled;
  final String? id;
  final String? createdTime;
  final String? currency;
  final num? createdByUserID;
  final String? alias;
  final String? marginRate;
  final String? lastTransactionID;
  final String? balance;
  final num? openTradeCount;
  final num? openPositionCount;
  final num? pendingOrderCount;
  final String? pl;
  final String? resettablePL;
  final String? resettablePLTime;
  final String? financing;
  final String? commission;
  final String? dividendAdjustment;
  final String? guaranteedExecutionFees;
  final List<LastDividendAdjustmentTimestamps>?
      lastDividendAdjustmentTimestamps;
  final List<Positions>? positions;
  final List<Trades>? trades;
  final String? unrealizedPL;
  final String? nav;
  final String? marginUsed;
  final String? marginAvailable;
  final String? positionValue;
  final String? marginCloseoutUnrealizedPL;
  final String? marginCloseoutNAV;
  final String? marginCloseoutMarginUsed;
  final String? marginCloseoutPositionValue;
  final String? marginCloseoutPercent;
  final String? withdrawalLimit;
  final String? marginCallMarginUsed;
  final String? marginCallPercent;
}

class LastDividendAdjustmentTimestamps {
  LastDividendAdjustmentTimestamps.fromJson(Map<String, dynamic> json)
      : instrument = json['instrument'],
        timestamp = json['timestamp'];

  final String? instrument;
  final String? timestamp;
}

class Positions {
  Positions.fromJson(Map<String, dynamic> json)
      : instrument = json['instrument'],
        long = json['long'] == null ? null : Long.fromJson(json['long']),
        short = json['short'] == null ? null : Short.fromJson(json['short']),
        pl = json['pl'],
        resettablePL = json['resettablePL'],
        financing = json['financing'],
        commission = json['commission'],
        dividendAdjustment = json['dividendAdjustment'],
        guaranteedExecutionFees = json['guaranteedExecutionFees'],
        unrealizedPL = json['unrealizedPL'];

  final String? instrument;
  final Long? long;
  final Short? short;
  final String? pl;
  final String? resettablePL;
  final String? financing;
  final String? commission;
  final String? dividendAdjustment;
  final String? guaranteedExecutionFees;
  final String? unrealizedPL;
}

class Long {
  Long.fromJson(Map<String, dynamic> json)
      : units = json['units'],
        pl = json['pl'],
        resettablePL = json['resettablePL'],
        financing = json['financing'],
        dividendAdjustment = json['dividendAdjustment'],
        guaranteedExecutionFees = json['guaranteedExecutionFees'],
        unrealizedPL = json['unrealizedPL'];

  final String? units;
  final String? pl;
  final String? resettablePL;
  final String? financing;
  final String? dividendAdjustment;
  final String? guaranteedExecutionFees;
  final String? unrealizedPL;
}

class Short {
  Short.fromJson(Map<String, dynamic> json)
      : units = json['units'],
        pl = json['pl'],
        resettablePL = json['resettablePL'],
        financing = json['financing'],
        dividendAdjustment = json['dividendAdjustment'],
        guaranteedExecutionFees = json['guaranteedExecutionFees'],
        unrealizedPL = json['unrealizedPL'];

  final String? units;
  final String? pl;
  final String? resettablePL;
  final String? financing;
  final String? dividendAdjustment;
  final String? guaranteedExecutionFees;
  final String? unrealizedPL;
}

class Trades {
  Trades.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        instrument = json['instrument'],
        price = json['price'],
        openTime = json['openTime'],
        initialUnits = json['initialUnits'],
        initialMarginRequired = json['initialMarginRequired'],
        state = json['state'],
        currentUnits = json['currentUnits'],
        realizedPL = json['realizedPL'],
        financing = json['financing'],
        dividendAdjustment = json['dividendAdjustment'],
        unrealizedPL = json['unrealizedPL'],
        marginUsed = json['marginUsed'];

  final String? id;
  final String? instrument;
  final String? price;
  final String? openTime;
  final String? initialUnits;
  final String? initialMarginRequired;
  final String? state;
  final String? currentUnits;
  final String? realizedPL;
  final String? financing;
  final String? dividendAdjustment;
  final String? unrealizedPL;
  final String? marginUsed;
}

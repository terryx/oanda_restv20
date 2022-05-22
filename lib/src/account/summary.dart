class AccountSummary {
  AccountSummary.fromJson(Map<String, dynamic> json) :
        account = json['account'] == null ? null : Account.fromJson(json['account']),
        lastTransactionID = json['lastTransactionID'];

  final Account? account;
  final String? lastTransactionID;

}

class Account {
  Account.fromJson(Map<String, dynamic> json) :
        guaranteedStopLossOrderMode = json['guaranteedStopLossOrderMode'],
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
        lastDividendAdjustmentTimestamps = json['lastDividendAdjustmentTimestamps'] == null ? null : List<Map<String, dynamic>>.from(json['lastDividendAdjustmentTimestamps']).map((dynamic value) => LastDividendAdjustmentTimestamps.fromJson(value)).toList(),
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
  final List<LastDividendAdjustmentTimestamps>? lastDividendAdjustmentTimestamps;
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
  LastDividendAdjustmentTimestamps.fromJson(Map<String, dynamic> json) :
        instrument = json['instrument'],
        timestamp = json['timestamp'];

  final String? instrument;
  final String? timestamp;
}

class AccountInstrument {
  AccountInstrument.fromJson(Map<String, dynamic> json)
      : instruments = json['instruments'] == null
            ? null
            : List<Map<String, dynamic>>.from(json['instruments'])
                .map((dynamic value) => Instruments.fromJson(value))
                .toList(),
        lastTransactionID = json['lastTransactionID'];

  final List<Instruments>? instruments;
  final String? lastTransactionID;
}

class Instruments {
  Instruments.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        type = json['type'],
        displayName = json['displayName'],
        pipLocation = json['pipLocation'],
        displayPrecision = json['displayPrecision'],
        tradeUnitsPrecision = json['tradeUnitsPrecision'],
        minimumTradeSize = json['minimumTradeSize'],
        maximumTrailingStopDistance = json['maximumTrailingStopDistance'],
        minimumTrailingStopDistance = json['minimumTrailingStopDistance'],
        maximumPositionSize = json['maximumPositionSize'],
        maximumOrderUnits = json['maximumOrderUnits'],
        marginRate = json['marginRate'],
        guaranteedStopLossOrderMode = json['guaranteedStopLossOrderMode'],
        tags = json['tags'] == null
            ? null
            : List<Map<String, dynamic>>.from(json['tags'])
                .map((dynamic value) => Tags.fromJson(value))
                .toList(),
        financing = json['financing'] == null
            ? null
            : Financing.fromJson(json['financing']);

  final String? name;
  final String? type;
  final String? displayName;
  final num? pipLocation;
  final num? displayPrecision;
  final num? tradeUnitsPrecision;
  final String? minimumTradeSize;
  final String? maximumTrailingStopDistance;
  final String? minimumTrailingStopDistance;
  final String? maximumPositionSize;
  final String? maximumOrderUnits;
  final String? marginRate;
  final String? guaranteedStopLossOrderMode;
  final List<Tags>? tags;
  final Financing? financing;
}

class Tags {
  Tags.fromJson(Map<String, dynamic> json)
      : type = json['type'],
        name = json['name'];

  final String? type;
  final String? name;
}

class Financing {
  Financing.fromJson(Map<String, dynamic> json)
      : longRate = json['longRate'],
        shortRate = json['shortRate'],
        financingDaysOfWeek = json['financingDaysOfWeek'] == null
            ? null
            : List<Map<String, dynamic>>.from(json['financingDaysOfWeek'])
                .map((dynamic value) => FinancingDaysOfWeek.fromJson(value))
                .toList();

  final String? longRate;
  final String? shortRate;
  final List<FinancingDaysOfWeek>? financingDaysOfWeek;
}

class FinancingDaysOfWeek {
  FinancingDaysOfWeek.fromJson(Map<String, dynamic> json)
      : dayOfWeek = json['dayOfWeek'],
        daysCharged = json['daysCharged'];

  final String? dayOfWeek;
  final num? daysCharged;
}

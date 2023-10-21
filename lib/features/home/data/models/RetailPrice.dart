/// amountInMicros : 23990000
/// currencyCode : "USD"

class RetailPrice {
  RetailPrice({
      this.amountInMicros, 
      this.currencyCode,});

  RetailPrice.fromJson(dynamic json) {
    amountInMicros = json['amount'];
    currencyCode = json['currencyCode'];
  }
  num? amountInMicros;
  String? currencyCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['amount'] = amountInMicros;
    map['currencyCode'] = currencyCode;
    return map;
  }

}
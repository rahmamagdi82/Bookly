/// amountInMicros : 23990000
/// currencyCode : "USD"

class ListPrice {
  ListPrice({
      this.amountInMicros, 
      this.currencyCode,});

  ListPrice.fromJson(dynamic json) {
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
import 'ListPrice.dart';
import 'RetailPrice.dart';

/// finskyOfferType : 1
/// listPrice : {"amountInMicros":23990000,"currencyCode":"USD"}
/// retailPrice : {"amountInMicros":23990000,"currencyCode":"USD"}
/// giftable : true

class Offers {
  Offers({
      this.finskyOfferType, 
      this.listPrice, 
      this.retailPrice, 
      this.giftable,});

  Offers.fromJson(dynamic json) {
    finskyOfferType = json['finskyOfferType'];
    listPrice = json['listPrice'] != null ? ListPrice.fromJson(json['listPrice']) : null;
    retailPrice = json['retailPrice'] != null ? RetailPrice.fromJson(json['retailPrice']) : null;
    giftable = json['giftable'];
  }
  num? finskyOfferType;
  ListPrice? listPrice;
  RetailPrice? retailPrice;
  bool? giftable;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['finskyOfferType'] = finskyOfferType;
    map['listPrice'] = listPrice;
    if (retailPrice != null) {
      map['retailPrice'] = retailPrice?.toJson();
    }
    map['giftable'] = giftable;
    return map;
  }

}
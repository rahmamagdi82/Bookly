import 'ListPrice.dart';
import 'RetailPrice.dart';
import 'Offers.dart';

/// country : "US"
/// saleability : "FOR_SALE"
/// isEbook : true
/// listPrice : {"amount":23.99,"currencyCode":"USD"}
/// retailPrice : {"amount":23.99,"currencyCode":"USD"}
/// buyLink : "https://play.google.com/store/books/details?id=qAOhDwAAQBAJ&rdid=book-qAOhDwAAQBAJ&rdot=1&source=gbs_api"
/// offers : [{"finskyOfferType":1,"listPrice":{"amountInMicros":23990000,"currencyCode":"USD"},"retailPrice":{"amountInMicros":23990000,"currencyCode":"USD"},"giftable":true}]

class SaleInfo {
  SaleInfo({
    this.country,
    this.saleability,
    this.isEbook,
    this.listPrice,
    this.retailPrice,
    this.buyLink,
    this.offers,});

  SaleInfo.fromJson(dynamic json) {
    country = json['country'];
    saleability = json['saleability'];
    isEbook = json['isEbook'];
    listPrice = json['listPrice'] != null?
    ListPrice.fromJson(json['listPrice'])
    :null;
    retailPrice = json['retailPrice'] != null
        ? RetailPrice.fromJson(json['retailPrice'])
        : null;
    buyLink = json['buyLink'];
    if (json['offers'] != null) {
      offers = [];
      json['offers'].forEach((v) {
        offers?.add(Offers.fromJson(v));
      });
    }
  }

  String? country;
  String? saleability;
  bool? isEbook;
  ListPrice? listPrice;
  RetailPrice? retailPrice;
  String? buyLink;
  List<Offers>? offers;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = country;
    map['saleability'] = saleability;
    map['isEbook'] = isEbook;
    map['listPrice'] = listPrice;
    if (retailPrice != null) {
      map['retailPrice'] = retailPrice?.toJson();
    }
    map['buyLink'] = buyLink;
    if (offers != null) {
      map['offers'] = offers?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
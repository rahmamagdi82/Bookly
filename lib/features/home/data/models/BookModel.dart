import 'package:bookly_app_test/features/home/domain/entities/book_entity.dart';

import 'SaleInfo.dart';
import 'AccessInfo.dart';
import 'SearchInfo.dart';
import 'VolumeInfo.dart';

/// kind : "books#volume"
/// id : "qAOhDwAAQBAJ"
/// etag : "rRM1K3Xd0gY"
/// selfLink : "https://www.googleapis.com/books/v1/volumes/qAOhDwAAQBAJ"
/// volumeInfo : {"title":"The Rust Programming Language (Covers Rust 2018)","authors":["Steve Klabnik","Carol Nichols"],"publisher":"No Starch Press","publishedDate":"2019-09-03","description":"The official book on the Rust programming language, written by the Rust development team at the Mozilla Foundation, fully updated for Rust 2018. The Rust Programming Language is the official book on Rust: an open source systems programming language that helps you write faster, more reliable software. Rust offers control over low-level details (such as memory usage) in combination with high-level ergonomics, eliminating the hassle traditionally associated with low-level languages. The authors of The Rust Programming Language, members of the Rust Core Team, share their knowledge and experience to show you how to take full advantage of Rust's features--from installation to creating robust and scalable programs. You'll begin with basics like creating functions, choosing data types, and binding variables and then move on to more advanced concepts, such as: Ownership and borrowing, lifetimes, and traits Using Rust's memory safety guarantees to build fast, safe programs Testing, error handling, and effective refactoring Generics, smart pointers, multithreading, trait objects, and advanced pattern matching Using Cargo, Rust's built-in package manager, to build, test, and document your code and manage dependencies How best to use Rust's advanced compiler with compiler-led programming techniques You'll find plenty of code examples throughout the book, as well as three chapters dedicated to building complete projects to test your learning: a number guessing game, a Rust implementation of a command line tool, and a multithreaded server. New to this edition: An extended section on Rust macros, an expanded chapter on modules, and appendixes on Rust development tools and editions.","industryIdentifiers":[{"type":"ISBN_13","identifier":"9781718500457"},{"type":"ISBN_10","identifier":"1718500459"}],"readingModes":{"text":true,"image":false},"pageCount":561,"printType":"BOOK","categories":["Computers"],"maturityRating":"NOT_MATURE","allowAnonLogging":true,"contentVersion":"1.4.3.0.preview.2","panelizationSummary":{"containsEpubBubbles":false,"containsImageBubbles":false},"imageLinks":{"smallThumbnail":"http://books.google.com/books/content?id=qAOhDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=qAOhDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"},"language":"en","previewLink":"http://books.google.com/books?id=qAOhDwAAQBAJ&printsec=frontcover&dq=programming&hl=&cd=1&source=gbs_api","infoLink":"https://play.google.com/store/books/details?id=qAOhDwAAQBAJ&source=gbs_api","canonicalVolumeLink":"https://play.google.com/store/books/details?id=qAOhDwAAQBAJ"}
/// saleInfo : {"country":"US","saleability":"FOR_SALE","isEbook":true,"listPrice":{"amount":23.99,"currencyCode":"USD"},"retailPrice":{"amount":23.99,"currencyCode":"USD"},"buyLink":"https://play.google.com/store/books/details?id=qAOhDwAAQBAJ&rdid=book-qAOhDwAAQBAJ&rdot=1&source=gbs_api","offers":[{"finskyOfferType":1,"listPrice":{"amountInMicros":23990000,"currencyCode":"USD"},"retailPrice":{"amountInMicros":23990000,"currencyCode":"USD"},"giftable":true}]}
/// accessInfo : {"country":"US","viewability":"PARTIAL","embeddable":true,"publicDomain":false,"textToSpeechPermission":"ALLOWED","epub":{"isAvailable":true},"pdf":{"isAvailable":false},"webReaderLink":"http://play.google.com/books/reader?id=qAOhDwAAQBAJ&hl=&source=gbs_api","accessViewStatus":"SAMPLE","quoteSharingAllowed":false}
/// searchInfo : {"textSnippet":"New to this edition: An extended section on Rust macros, an expanded chapter on modules, and appendixes on Rust development tools and editions."}

class BookModel extends BookEntity{
  BookModel({
      this.kind,
      this.id,
      this.etag, 
      this.selfLink, 
      this.volumeInfo, 
      this.saleInfo, 
      this.accessInfo, 
      this.searchInfo,}) : super(bookId: id, image: volumeInfo?.imageLinks?.thumbnail ?? '', title: volumeInfo!.title!, authorName: volumeInfo.authors!.first, price: saleInfo?.retailPrice?.amountInMicros ?? 0, rating: volumeInfo.averageRating,countRating: volumeInfo.ratingsCount);

  factory BookModel.fromJson(dynamic json) => BookModel(kind:json['kind'],
      id:json['id'],
      etag:json['etag'],
      selfLink:json['selfLink'],
      volumeInfo:json['volumeInfo'] != null ? VolumeInfo.fromJson(json['volumeInfo']) : null,
      saleInfo:json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null,
      accessInfo:json['accessInfo'] != null ? AccessInfo.fromJson(json['accessInfo']) : null,
      searchInfo: json['searchInfo'] != null ? SearchInfo.fromJson(json['searchInfo']) : null
  );

  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;
  SearchInfo? searchInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['id'] = id;
    map['etag'] = etag;
    map['selfLink'] = selfLink;
    if (volumeInfo != null) {
      map['volumeInfo'] = volumeInfo?.toJson();
    }
    if (saleInfo != null) {
      map['saleInfo'] = saleInfo?.toJson();
    }
    if (accessInfo != null) {
      map['accessInfo'] = accessInfo?.toJson();
    }
    if (searchInfo != null) {
      map['searchInfo'] = searchInfo?.toJson();
    }
    return map;
  }

}
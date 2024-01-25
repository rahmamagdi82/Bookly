import 'package:bookly_app_test/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app_test/features/home/domain/entities/list_entity.dart';

/// YApi QuickType插件生成，具体参考文档:https://plugins.jetbrains.com/plugin/18847-yapi-quicktype/documentation


class BestSellerBooksOfListModel extends ListEntity {
    BestSellerBooksOfListModel({
        required this.books,
        required this.listId,
        required this.listName,
        required this.listNameEncoded,
        required this.displayName,
        required this.updated,
    }) : super(listName: listName, books: books);

  List<Book> books;
    int listId;
    String listName;
    String listNameEncoded;
    String displayName;
    String updated;

    factory BestSellerBooksOfListModel.fromJson(Map<dynamic, dynamic> json) => BestSellerBooksOfListModel(
        books: List<Book>.from(json["books"].map((x) => Book.fromJson(x))),
        listId: json["list_id"],
        listName: json["list_name"],
        listNameEncoded: json["list_name_encoded"],
        displayName: json["display_name"],
        updated: json["updated"],
    );
    
}

class Book extends BookEntity{
    Book({
        required this.contributorNote,
        required this.description,
        required this.primaryIsbn10,
        required this.primaryIsbn13,
        required this.title,
        required this.articleChapterLink,
        required this.weeksOnList,
        required this.bookImageWidth,
        required this.contributor,
        required this.amazonProductUrl,
        required this.price,
        required this.bookUri,
        required this.rank,
        required this.ageGroup,
        required this.author,
        required this.buyLinks,
        required this.sundayReviewLink,
        required this.bookReviewLink,
        required this.bookImageHeight,
        required this.bookImage,
        required this.publisher,
        required this.createdDate,
        required this.updatedDate,
        required this.rankLastWeek,
        required this.firstChapterLink,
    }) : super(image: bookImage, title: title, authorName: author, rank: rank);

    String contributorNote;
    String description;
    String primaryIsbn10;
    String primaryIsbn13;
    String title;
    String articleChapterLink;
    int weeksOnList;
    int bookImageWidth;
    String contributor;
    String amazonProductUrl;
    String price;
    String bookUri;
    int rank;
    String ageGroup;
    String author;
    List<BuyLink> buyLinks;
    String sundayReviewLink;
    String bookReviewLink;
    int bookImageHeight;
    String bookImage;
    String publisher;
    DateTime createdDate;
    DateTime updatedDate;
    int rankLastWeek;
    String firstChapterLink;

    factory Book.fromJson(Map<dynamic, dynamic> json) => Book(
        contributorNote: json["contributor_note"],
        description: json["description"],
        primaryIsbn10: json["primary_isbn10"],
        primaryIsbn13: json["primary_isbn13"],
        title: json["title"],
        articleChapterLink: json["article_chapter_link"],
        weeksOnList: json["weeks_on_list"],
        bookImageWidth: json["book_image_width"],
        contributor: json["contributor"],
        amazonProductUrl: json["amazon_product_url"],
        price: json["price"],
        bookUri: json["book_uri"],
        rank: json["rank"],
        ageGroup: json["age_group"],
        author: json["author"],
        buyLinks: List<BuyLink>.from(json["buy_links"].map((x) => BuyLink.fromJson(x))),
        sundayReviewLink: json["sunday_review_link"],
        bookReviewLink: json["book_review_link"],
        bookImageHeight: json["book_image_height"],
        bookImage: json["book_image"],
        publisher: json["publisher"],
        createdDate: DateTime.parse(json["created_date"]),
        updatedDate: DateTime.parse(json["updated_date"]),
        rankLastWeek: json["rank_last_week"],
        firstChapterLink: json["first_chapter_link"],
    );
}

class BuyLink {
    BuyLink({
        required this.name,
        required this.url,
    });

    String name;
    String url;

    factory BuyLink.fromJson(Map<dynamic, dynamic> json) => BuyLink(
        name: json["name"],
        url: json["url"],
    );
}

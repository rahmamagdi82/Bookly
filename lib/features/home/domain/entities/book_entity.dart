class BookEntity {
  final String? bookId;
  final String? image;
  final String title;
  final String? authorName;
  final num? price;
  final num? rating;
  final num? countRating;


  BookEntity(
      {required this.bookId,
      required this.image,
      required this.title,
      required this.authorName,
      required this.price,
      required this.rating,
      required this.countRating,});
}

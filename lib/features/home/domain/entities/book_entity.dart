import 'package:hive/hive.dart';

import '../../data/models/overview_list_model.dart';

// part 'book_entity.g.dart';

@HiveType(typeId: 0)
class BookEntity extends HiveObject {
  @HiveField(0)
  final String image;

  @HiveField(2)
  final String title;

  @HiveField(3)
  final String authorName;

  @HiveField(4)
  final num? rank;

  final List<BuyLink> buyLinks;


  BookEntity(
      {required this.image,
      required this.title,
      required this.authorName,
      required this.rank,
      required this.buyLinks,
      });
}

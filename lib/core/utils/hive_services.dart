import 'package:hive/hive.dart';

class HiveServices{
  static void addAllData(var data, String boxName){
    var box = Hive.box(boxName);
    box.addAll(data);
  }
}
import 'package:hive/hive.dart';

class HiveServices{
  static void addAllData<T>(var data, String boxName){
    var box = Hive.box<T>(boxName);
    box.addAll(data);
  }
}
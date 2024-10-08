import 'package:hive/hive.dart';

part 'hive_data.g.dart';

@HiveType(typeId: 0)
class HiveData extends HiveObject {
  @HiveField(0)
  late int count;
}

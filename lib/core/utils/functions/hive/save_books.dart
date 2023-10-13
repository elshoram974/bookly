  import 'package:hive/hive.dart';

import '../../../../features/home/domain/entities/home_entity.dart';

void saveBooks(List<HomeBooksEntity> books, String boxName) async{
    Box<HomeBooksEntity> box = Hive.box<HomeBooksEntity>(boxName);
    await box.addAll(books);
  }
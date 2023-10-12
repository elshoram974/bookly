  import 'package:hive/hive.dart';

import '../../../../features/home/domain/entities/home_entity.dart';

void saveBooks(List<HomeBooksEntity> books, String boxName) {
    Box<HomeBooksEntity> box = Hive.box<HomeBooksEntity>(boxName);
    box.addAll(books);
  }
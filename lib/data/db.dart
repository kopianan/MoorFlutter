import 'package:flutter_moor_sql/data/tasks.dart';
import 'package:flutter_moor_sql/data/tasks_dao.dart';
import 'package:moor_flutter/moor_flutter.dart';
part 'db.g.dart';

@UseMoor(tables: [Tasks],daos: [TasksDao])
class AppDatabase extends _$AppDatabase {
  AppDatabase()
      // Specify the location of the database file
      : super((FlutterQueryExecutor.inDatabaseFolder(
          path: 'db.sqlite',
          // Good for debugging - prints SQL in the console
          logStatements: true,
        )));

  @override
  int get schemaVersion => 1;
}

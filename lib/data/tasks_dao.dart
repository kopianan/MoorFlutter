import 'package:flutter_moor_sql/data/db.dart';
import 'package:flutter_moor_sql/data/tasks.dart';
import 'package:moor_flutter/moor_flutter.dart';
part 'tasks_dao.g.dart';

@UseDao(tables: [Tasks])
class TasksDao extends DatabaseAccessor<AppDatabase> with _$TasksDaoMixin{
  TasksDao(AppDatabase db) : super(db);

 // All tables have getters in the generated class - we can select the tasks table
 
  Future<List<Task>> getAllTasks() => select(tasks).get();

  // Moor supports Streams which emit elements when the watched data changes
  Stream<List<Task>> watchAllTasks() => select(tasks).watch();

  Future insertTask(Task task) => into(tasks).insert(task);

  // Updates a Task with a matching primary key
  Future updateTask(Task task) => update(tasks).replace(task);

  Future deleteTask(Task task) => delete(tasks).delete(task);


  
}
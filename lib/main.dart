import 'package:flutter/material.dart';
import 'package:flutter_moor_sql/data/db.dart';
import 'package:flutter_moor_sql/data/tasks_dao.dart';
import 'package:flutter_moor_sql/ui/home_page.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<TasksDao>(builder: (_)=>AppDatabase().tasksDao,)
      ],
          child: MaterialApp(
          title: 'Material App',
          home: HomePage(),
        
      ),
    );
  }
}
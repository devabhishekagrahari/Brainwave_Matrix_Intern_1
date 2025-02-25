import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList =[];
  //refrence the box
  final _myBox = Hive.box('myBox');

  void createInitialData(){
    toDoList =[
      ["Make Tutorials", false],
      ["Do Exercise", false],
    ];
  }
  void loadData(){
    toDoList = _myBox.get("TODOLIST");
  }
  void updateDataBase(){
    _myBox.put("TODOLIST" , toDoList);
  }
}
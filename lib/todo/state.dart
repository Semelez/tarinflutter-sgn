import 'package:flutter/material.dart';

class Todo with ChangeNotifier{
   List<String> task = ["A" , "B" , "C"];
   void add(String text){
     task.add(text);
     notifyListeners();
   }

   void edit (int index , newtext){
    task[index] = newtext;
     notifyListeners();
   }

   void delete (int index){
     task.removeAt(index);
      notifyListeners();
    
   }  
}
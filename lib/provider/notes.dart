
import 'package:flutter/material.dart';
import 'package:text_to_speech/models/note.dart';

class NotesProvider with ChangeNotifier {
   List<Notes> notes = [];

   void addNote(Notes note){
      notes.add(note);
      notifyListeners();
   }
   void removeNote(int index,Notes note){
    notes.remove(note);
    notifyListeners();
   }
}
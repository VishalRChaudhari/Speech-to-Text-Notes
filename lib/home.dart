import 'package:flutter/material.dart';
import 'package:text_to_speech/add_notes.dart';
import 'package:text_to_speech/models/note.dart';
import 'package:text_to_speech/provider/notes.dart';
import 'package:provider/provider.dart';
import 'package:text_to_speech/widgets/notestile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notes',
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1),
        ),
        elevation: 4,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final newnote = await Navigator.of(
            context,
          ).push(MaterialPageRoute(builder: (context) => AddNote()));

          if (newnote != null) {
            Provider.of<NotesProvider>(context).addNote(newnote);
          }
        },
        elevation: 3,
        child: Icon(Icons.add),
      ),

      body: Expanded(
        child: Consumer<NotesProvider>(
          builder: (context, notesprovider, _) {
            return ListView.builder(
              itemBuilder: (context, index) {
                Notes note = notesprovider.notes[index];
                return NotesTile(note: note.note);
              },
              itemCount: notesprovider.notes.length,
            );
          },
        ),
      ),
    );
  }
}

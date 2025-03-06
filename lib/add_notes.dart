import 'package:flutter/material.dart';
import 'package:text_to_speech/models/note.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _notecontroller = TextEditingController();
    return Scaffold(
      //confirmation on cancel if text entered or directly save it
      appBar: AppBar(
        title: Text(
          'Notes',
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1),
        ),
        elevation: 4,
        actions: [
          GestureDetector(
            onTap: () {
              //if text is not empty then save else cancel and pop
              if (_notecontroller.text.isNotEmpty) {
                Navigator.of(context).pop(Notes(note: _notecontroller.text));
              } else {
                Navigator.of(context).pop();
              }
            },
            child: Text(
              'Done',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 2, left: 5, right: 5, bottom: 1),
          child: Column(
            children: [
              //whole screen textfield
              TextField(
                controller: _notecontroller,
                scrollPadding: EdgeInsets.all(20),
                autofocus: true,
                keyboardType: TextInputType.multiline,
                maxLines: 9999,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: MaterialButton(
        onPressed: () {},
        height: 50,
        shape: CircleBorder(),
        color: ColorScheme.of(context).onInverseSurface,
        child: Icon(Icons.mic),
      ),
    );
  }
}

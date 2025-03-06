import 'package:flutter/material.dart';

class NotesTile extends StatelessWidget {
  const NotesTile({super.key, required this.note});
  final String note;

  @override
  Widget build(BuildContext context) {
    return ListTile(subtitle: Text(note));
  }
}

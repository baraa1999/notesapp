import 'package:flutter/material.dart';
import 'package:notesapp/views/note_view.dart';

void main() {
  runApp(const NotesApp());
}
class NotesApp extends StatefulWidget {
  const NotesApp({super.key});

  @override
  State<NotesApp> createState() => _NotesAppState();
}

class _NotesAppState extends State<NotesApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const NoteView(


      ),



    );
  }
}





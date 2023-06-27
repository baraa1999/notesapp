
import 'package:flutter/material.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/views/widget/edit_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: EditNoteViewBody(
        note: note,

      ),

    );
  }
}

import 'package:flutter/material.dart';
import 'package:notesapp/views/widget/add_note_bottom_sheet.dart';
import 'widget/notes_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton:FloatingActionButton(onPressed: (){
        showModalBottomSheet(context: context, builder: (context){
          return const AddNoteBottomSheet();

        });
      },child: const Icon(Icons.add),) ,
      body: const NotesViewBody(


      ) ,

    );
    
  }
  
}




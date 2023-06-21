import 'package:flutter/material.dart';
import 'widget/notes_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton:FloatingActionButton(onPressed: (){},child: const Icon(Icons.add),) ,
      body: const NotesViewBody(


      ) ,

    );
    
  }
  
}



import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notesapp/add_note_cubit/add_notes_cubit.dart';
import 'add_note_form.dart';

class AddNoteBottomSheet extends StatefulWidget {
   const AddNoteBottomSheet({super.key});

  @override
  State<AddNoteBottomSheet> createState() => _AddNoteBottomSheetState();
}

class _AddNoteBottomSheetState extends State<AddNoteBottomSheet> {

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
          child: BlocConsumer<AddNotesCubit, AddNotesState>(
            listener: (context, state) {
              if(state is AddNoteFailure){
                 print('Failed ${state.errMessage}');
              }
              if(state is AddNoteSuccess){
                Navigator.pop(context);
              }
            },
            builder: (context, state) {
              return  ModalProgressHUD(
                inAsyncCall:state is AddNoteLoading ? true : false ,
                child: const AddNoteForm());
            },
          )
      ),
    );
  }
}






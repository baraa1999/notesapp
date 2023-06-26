import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    return BlocProvider(
      create: (context) => AddNotesCubit(),
        child: BlocConsumer<AddNotesCubit, AddNotesState>(
          listener: (context, state) {
            if (state is AddNoteFailure) {
              debugPrint('Failed ${state.errMessage}');
            }
            if (state is AddNoteSuccess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return  AbsorbPointer(
              absorbing: state is AddNoteLoading ? true : false,
              child:  Padding(
                padding: EdgeInsets.only(left: 16,right: 16,
                    bottom:MediaQuery.of(context).viewInsets.bottom
                ),
                child: const SingleChildScrollView(
                    child: AddNoteForm()
                ),
              ),
            );
          },
        ),
    );

  }
}






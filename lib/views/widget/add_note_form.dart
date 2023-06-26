import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/add_note_cubit/add_notes_cubit.dart';
import 'package:notesapp/models/note_model.dart';
import 'custom_button.dart';
import 'custom_text_field.dart';
class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}
class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return  Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child:   Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            onSaved: (value){
              title = value;
            },
            hint: 'title',

          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (value){
              subtitle = value;
            },
            hint: 'content',
            maxLines: 5,
          ),
          const SizedBox(height: 32,),
          BlocBuilder<AddNotesCubit, AddNotesState>(
          builder: (context, state) {
           return CustomButton(
            isLoading: state is AddNoteLoading ? true : false,
            onTap: (){
              if(formKey.currentState!.validate())
              {
                formKey.currentState!.save();
                var noteModel = NoteModel(
                    title: title!,
                    subtitle: subtitle!,
                    date: DateTime.now().toString(),
                    color: Colors.blue.value);

                BlocProvider.of<AddNotesCubit>(context).addNote(noteModel);
              }else
              {
                autovalidateMode = AutovalidateMode.always;
                setState(() {

                });
              }
            },
          );
  },
),
          const SizedBox(height: 16,),
        ],
      ),
    );
  }
}
import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../constants.dart';
import '../models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel> ?notes;


  fetchAllNotes()  {

      // open box
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      // access to data
       notes = notesBox.values.toList();
      emit(NotesSuccess());

  }
  }



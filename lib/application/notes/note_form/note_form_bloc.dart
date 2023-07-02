import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:notes_ddd/domain/notes/note.dart';
import 'package:notes_ddd/domain/notes/note_failure.dart';
import 'package:notes_ddd/domain/notes/value_objects.dart';
import 'package:notes_ddd/presentation/notes/note_form/misc/todo_item_presentation_classes.dart';

part 'note_form_event.dart';

part 'note_form_state.dart';

part "note_form_bloc.freezed.dart";

class NoteFormBloc extends Bloc<NoteFormEvent, NoteFormState> {
  NoteFormBloc() : super(NoteFormState.initial()) {
    on<_Initialized>((event, emit) {
      emit(event.initialNoteOption.fold(
        () => state,
        (initialNote) => state.copyWith(
          note: initialNote,
          isEditing: true,
        ),
      ));
    });

    on<_BodyChanged>((event, emit) {
      emit(state.copyWith(
        note: state.note.copyWith(body: NoteBody(event.bodyStr)),
        saveFailureOrSuccessOption: none(),
      ));
    });

    on<_ColorChanged>((event, emit) {
      emit(state.copyWith(
        note: state.note.copyWith(color: NoteColor(event.color)),
        saveFailureOrSuccessOption: none(),
      ));
    });

    on<_TodosChanged>((event, emit) {
      emit(state.copyWith(
        note: state.note.copyWith(
            todos: List3(event.todos.map((primitive) => primitive.toDomain()))),
        saveFailureOrSuccessOption: none(),
      ));
    });

    on<_Saved>((event, emit){
      emit(state.copyWith(
        isSaving: true,
        saveFailureOrSuccessOption: none(),
      ));
      // if (state.note.failureOption.isNone()){
      //
      // }
    });
  }
}

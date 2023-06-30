import 'dart:async';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';
import 'package:notes_ddd/presentation/notes/note_form/misc/todo_item_presentation_classes.dart';

part 'note_form_event.dart';
part 'note_form_state.dart';
part "note_form_bloc.freezed.dart";

class NoteFormBloc extends Bloc<NoteFormEvent, NoteFormState> {
  NoteFormBloc() : super(NoteFormInitial()) {
    on<NoteFormEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

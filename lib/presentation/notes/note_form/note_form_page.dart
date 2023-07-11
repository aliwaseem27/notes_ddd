import 'package:auto_route/annotations.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_ddd/application/notes/note_form/note_form_bloc.dart';
import 'package:notes_ddd/domain/notes/note.dart';
import 'package:notes_ddd/injection.dart';

@RoutePage()
class NoteFormPage extends StatelessWidget {
  final Note? editedNote;

  const NoteFormPage({Key? key, required this.editedNote}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<NoteFormBloc>()
        ..add(NoteFormEvent.initialized(optionOf(editedNote))),
      child: NoteFormSacffold(),
    );
  }
}

class NoteFormSacffold extends StatelessWidget {
  const NoteFormSacffold({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<NoteFormBloc, NoteFormState>(
          buildWhen: (previousState, currentState) =>
              previousState.isEditing != currentState.isEditing,
          builder: (context, state) {
            return Text(state.isEditing ? "Edit a note" : "Create a note");
          },
        ),
        actions: [
          IconButton(onPressed: (){
            context.read<NoteFormBloc>().add(const NoteFormEvent.saved());
          }, icon: const Icon(Icons.check))
        ],
      ),
    );
  }
}

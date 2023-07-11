import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_ddd/application/notes/note_form/note_form_bloc.dart';

class NoteFormScaffold extends StatelessWidget {
  const NoteFormScaffold({
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
          IconButton(
              onPressed: () {
                context.read<NoteFormBloc>().add(const NoteFormEvent.saved());
              },
              icon: const Icon(Icons.check))
        ],
      ),
    );
  }
}
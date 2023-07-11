import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_ddd/application/notes/note_form/note_form_bloc.dart';
import 'package:notes_ddd/presentation/notes/note_form/widgets/body_field_widget.dart';

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
      body: BlocBuilder<NoteFormBloc, NoteFormState>(
        buildWhen: (p, c) => p.showErrorMessages != c.showErrorMessages,
        builder: (context, state) {
          return Form(
            autovalidateMode: state.showErrorMessages,
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  BodyField(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

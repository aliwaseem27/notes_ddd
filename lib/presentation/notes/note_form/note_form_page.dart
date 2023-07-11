import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_ddd/application/notes/note_form/note_form_bloc.dart';
import 'package:notes_ddd/domain/notes/note.dart';
import 'package:notes_ddd/injection.dart';
import 'package:notes_ddd/presentation/notes/note_form/widgets/note_form_scaffold.dart';
import 'package:notes_ddd/presentation/notes/note_form/widgets/saving_in_progress_overlay.dart';
import 'package:notes_ddd/presentation/routes/app_router.dart';

@RoutePage()
class NoteFormPage extends StatelessWidget {
  final Note? editedNote;

  const NoteFormPage({Key? key, required this.editedNote}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<NoteFormBloc>()
        ..add(NoteFormEvent.initialized(optionOf(editedNote))),
      child: BlocConsumer<NoteFormBloc, NoteFormState>(
        listenWhen: (p, c) =>
            p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
        listener: (context, state) {
          state.saveFailureOrSuccessOption.fold(
              () {},
              (either) => either.fold(
                    (failure) {
                      FlushbarHelper.createError(
                        message: failure.map(
                            unexpected: (_) => "Unexpected Error",
                            insufficientPermission: (_) =>
                                "Insufficient Permission",
                            unableToUpdate: (_) => "Unable To Update"),
                      ).show(context);
                    },
                    (success) {
                      context.router
                          .popUntilRouteWithName(NotesOverviewRoute.name);
                    },
                  ));
        },
        builder: (context, state) {
          return Stack(
            children: [
              const NoteFormScaffold(),
              SavingInProgressOverlay(isSaving: state.isSaving),
            ],
          );
        },
      ),
    );
  }
}

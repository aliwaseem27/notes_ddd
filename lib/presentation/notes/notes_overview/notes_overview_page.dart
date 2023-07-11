import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_ddd/application/auth/auth_bloc.dart';
import 'package:notes_ddd/application/notes/note_actor/note_actor_bloc.dart';
import 'package:notes_ddd/application/notes/note_watcher/note_watcher_bloc.dart';
import 'package:notes_ddd/injection.dart';
import 'package:notes_ddd/presentation/notes/notes_overview/widgets/notes_overview_body_widget.dart';
import 'package:notes_ddd/presentation/notes/notes_overview/widgets/uncompleted_switcher.dart';
import 'package:notes_ddd/presentation/routes/app_router.dart';

@RoutePage()
class NotesOverviewPage extends StatefulWidget {
  const NotesOverviewPage({Key? key}) : super(key: key);

  @override
  State<NotesOverviewPage> createState() => _NotesOverviewPageState();
}

class _NotesOverviewPageState extends State<NotesOverviewPage> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NoteWatcherBloc>(
            create: (context) => getIt<NoteWatcherBloc>()
              ..add(const NoteWatcherEvent.watchAllStarted())),
        BlocProvider<NoteActorBloc>(
            create: (context) => getIt<NoteActorBloc>()),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(listener: (context, state) {
            state.maybeMap(
                unauthenticated: (_) =>
                    context.router.replace(const SignInRoute()),
                orElse: () {});
          }),
          BlocListener<NoteActorBloc, NoteActorState>(
              listener: (context, state) {
            state.maybeMap(
                deleteFailure: (failureState) {
                  FlushbarHelper.createError(
                    duration: const Duration(seconds: 5),
                    message: failureState.noteFailure.map(
                      unexpected: (_) =>
                          "Unexpected error occurred while deleting, please contact support",
                      insufficientPermission: (_) =>
                          "Insufficient permissions X",
                      unableToUpdate: (_) => "Impossible error",
                    ),
                  ).show(context);
                },
                orElse: () {});
          }),
        ],
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Notes"),
            leading: IconButton(
              icon: const Icon(Icons.exit_to_app),
              onPressed: () {
                context.read<AuthBloc>().add(const AuthEvent.signedOut());
              },
            ),
            actions: [
              UncompletedSwitcher(),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              context.router.push(NoteFormRoute(editedNote: null));
            },
            child: const Icon(Icons.add),
          ),
          body: NotesOverviewBody(),
        ),
      ),
    );
  }
}

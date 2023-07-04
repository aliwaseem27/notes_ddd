import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:notes_ddd/application/notes/note_watcher/note_watcher_bloc.dart';

class UncompletedSwitcher extends HookWidget {
  UncompletedSwitcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final toggleState = useState(false);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: InkResponse(
        onTap: () {
          toggleState.value = !toggleState.value;
          context.read<NoteWatcherBloc>().add(
                toggleState.value
                    ? const NoteWatcherEvent.watchAllStarted()
                    : const NoteWatcherEvent.watchUncompletedStarted(),
              );
        },
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 100),
          transitionBuilder: (widget, animation) => ScaleTransition(
            scale: animation,
            child: widget,
          ),
          child: toggleState.value
              ? Icon(
                  Icons.check_box_outline_blank,
                  key: const Key("check_box_outline"),
                )
              : Icon(
                  Icons.indeterminate_check_box,
                  key: const Key("indeterminate_check_box"),
                ),
        ),
      ),
    );
  }
}

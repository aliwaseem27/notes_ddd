import 'package:flutter/material.dart';
import 'package:notes_ddd/domain/notes/note.dart';

class ErrorNoteCard extends StatelessWidget {
  final Note note;

  const ErrorNoteCard({Key? key, required this.note}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.error,
      child: Column(
        children: [
          const Text(
            "Invalid note, please contact support.",
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          const SizedBox(
            height: 6,
          ),
          const Text("Details for nerd",
              style: TextStyle(fontSize: 14, color: Colors.white)),
          Text(note.failureOption.fold(() => "", (f) => f.toString()),
              style: const TextStyle(fontSize: 14, color: Colors.white))
        ],
      ),
    );
  }
}

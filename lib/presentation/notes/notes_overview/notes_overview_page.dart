import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class NotesOverviewPage extends StatefulWidget {
  const NotesOverviewPage({Key? key}) : super(key: key);

  @override
  State<NotesOverviewPage> createState() => _NotesOverviewPageState();
}

class _NotesOverviewPageState extends State<NotesOverviewPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Notes overview page"),),
    );
  }
}

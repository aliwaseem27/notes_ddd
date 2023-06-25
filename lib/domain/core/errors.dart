import 'package:notes_ddd/domain/core/failures.dart';

class NotAuthenticatedError extends Error {}

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation =
        "Encountered a ValueFailure at an unrecovable point. Terminating.";

    return Error.safeToString("$explanation Failure was: $valueFailure");
  }
}

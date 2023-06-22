part of 'note_actor_bloc.dart';

@freezed
abstract class NoteActorState with _$NoteActorState {
    const factory NoteActorState.intial() = _Intial;
    const factory NoteActorState.actionInProgess() = _ActionInProgess;
    const factory NoteActorState.deleteFailure(NoteFailure noteFailure) = _DeleteFailure;
    const factory NoteActorState.deleteSuccess() = _DeleteSuccess;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NoteActorEvent {
  Note get note => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note note) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Note note)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note note)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Deleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Deleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteActorEventCopyWith<NoteActorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteActorEventCopyWith<$Res> {
  factory $NoteActorEventCopyWith(
          NoteActorEvent value, $Res Function(NoteActorEvent) then) =
      _$NoteActorEventCopyWithImpl<$Res, NoteActorEvent>;
  @useResult
  $Res call({Note note});

  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class _$NoteActorEventCopyWithImpl<$Res, $Val extends NoteActorEvent>
    implements $NoteActorEventCopyWith<$Res> {
  _$NoteActorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
  }) {
    return _then(_value.copyWith(
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NoteCopyWith<$Res> get note {
    return $NoteCopyWith<$Res>(_value.note, (value) {
      return _then(_value.copyWith(note: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DeletedCopyWith<$Res>
    implements $NoteActorEventCopyWith<$Res> {
  factory _$$_DeletedCopyWith(
          _$_Deleted value, $Res Function(_$_Deleted) then) =
      __$$_DeletedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Note note});

  @override
  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class __$$_DeletedCopyWithImpl<$Res>
    extends _$NoteActorEventCopyWithImpl<$Res, _$_Deleted>
    implements _$$_DeletedCopyWith<$Res> {
  __$$_DeletedCopyWithImpl(_$_Deleted _value, $Res Function(_$_Deleted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
  }) {
    return _then(_$_Deleted(
      null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
    ));
  }
}

/// @nodoc

class _$_Deleted implements _Deleted {
  const _$_Deleted(this.note);

  @override
  final Note note;

  @override
  String toString() {
    return 'NoteActorEvent.deleted(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Deleted &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeletedCopyWith<_$_Deleted> get copyWith =>
      __$$_DeletedCopyWithImpl<_$_Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note note) deleted,
  }) {
    return deleted(note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Note note)? deleted,
  }) {
    return deleted?.call(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note note)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Deleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Deleted value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements NoteActorEvent {
  const factory _Deleted(final Note note) = _$_Deleted;

  @override
  Note get note;
  @override
  @JsonKey(ignore: true)
  _$$_DeletedCopyWith<_$_Deleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NoteActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intial,
    required TResult Function() actionInProgess,
    required TResult Function(NoteFailure noteFailure) deleteFailure,
    required TResult Function() deleteSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? intial,
    TResult? Function()? actionInProgess,
    TResult? Function(NoteFailure noteFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intial,
    TResult Function()? actionInProgess,
    TResult Function(NoteFailure noteFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Intial value) intial,
    required TResult Function(_ActionInProgess value) actionInProgess,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Intial value)? intial,
    TResult? Function(_ActionInProgess value)? actionInProgess,
    TResult? Function(_DeleteFailure value)? deleteFailure,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Intial value)? intial,
    TResult Function(_ActionInProgess value)? actionInProgess,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteActorStateCopyWith<$Res> {
  factory $NoteActorStateCopyWith(
          NoteActorState value, $Res Function(NoteActorState) then) =
      _$NoteActorStateCopyWithImpl<$Res, NoteActorState>;
}

/// @nodoc
class _$NoteActorStateCopyWithImpl<$Res, $Val extends NoteActorState>
    implements $NoteActorStateCopyWith<$Res> {
  _$NoteActorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_IntialCopyWith<$Res> {
  factory _$$_IntialCopyWith(_$_Intial value, $Res Function(_$_Intial) then) =
      __$$_IntialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_IntialCopyWithImpl<$Res>
    extends _$NoteActorStateCopyWithImpl<$Res, _$_Intial>
    implements _$$_IntialCopyWith<$Res> {
  __$$_IntialCopyWithImpl(_$_Intial _value, $Res Function(_$_Intial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Intial implements _Intial {
  const _$_Intial();

  @override
  String toString() {
    return 'NoteActorState.intial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Intial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intial,
    required TResult Function() actionInProgess,
    required TResult Function(NoteFailure noteFailure) deleteFailure,
    required TResult Function() deleteSuccess,
  }) {
    return intial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? intial,
    TResult? Function()? actionInProgess,
    TResult? Function(NoteFailure noteFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
  }) {
    return intial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intial,
    TResult Function()? actionInProgess,
    TResult Function(NoteFailure noteFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    required TResult orElse(),
  }) {
    if (intial != null) {
      return intial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Intial value) intial,
    required TResult Function(_ActionInProgess value) actionInProgess,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
  }) {
    return intial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Intial value)? intial,
    TResult? Function(_ActionInProgess value)? actionInProgess,
    TResult? Function(_DeleteFailure value)? deleteFailure,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
  }) {
    return intial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Intial value)? intial,
    TResult Function(_ActionInProgess value)? actionInProgess,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) {
    if (intial != null) {
      return intial(this);
    }
    return orElse();
  }
}

abstract class _Intial implements NoteActorState {
  const factory _Intial() = _$_Intial;
}

/// @nodoc
abstract class _$$_ActionInProgessCopyWith<$Res> {
  factory _$$_ActionInProgessCopyWith(
          _$_ActionInProgess value, $Res Function(_$_ActionInProgess) then) =
      __$$_ActionInProgessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ActionInProgessCopyWithImpl<$Res>
    extends _$NoteActorStateCopyWithImpl<$Res, _$_ActionInProgess>
    implements _$$_ActionInProgessCopyWith<$Res> {
  __$$_ActionInProgessCopyWithImpl(
      _$_ActionInProgess _value, $Res Function(_$_ActionInProgess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ActionInProgess implements _ActionInProgess {
  const _$_ActionInProgess();

  @override
  String toString() {
    return 'NoteActorState.actionInProgess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ActionInProgess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intial,
    required TResult Function() actionInProgess,
    required TResult Function(NoteFailure noteFailure) deleteFailure,
    required TResult Function() deleteSuccess,
  }) {
    return actionInProgess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? intial,
    TResult? Function()? actionInProgess,
    TResult? Function(NoteFailure noteFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
  }) {
    return actionInProgess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intial,
    TResult Function()? actionInProgess,
    TResult Function(NoteFailure noteFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    required TResult orElse(),
  }) {
    if (actionInProgess != null) {
      return actionInProgess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Intial value) intial,
    required TResult Function(_ActionInProgess value) actionInProgess,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
  }) {
    return actionInProgess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Intial value)? intial,
    TResult? Function(_ActionInProgess value)? actionInProgess,
    TResult? Function(_DeleteFailure value)? deleteFailure,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
  }) {
    return actionInProgess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Intial value)? intial,
    TResult Function(_ActionInProgess value)? actionInProgess,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) {
    if (actionInProgess != null) {
      return actionInProgess(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgess implements NoteActorState {
  const factory _ActionInProgess() = _$_ActionInProgess;
}

/// @nodoc
abstract class _$$_DeleteFailureCopyWith<$Res> {
  factory _$$_DeleteFailureCopyWith(
          _$_DeleteFailure value, $Res Function(_$_DeleteFailure) then) =
      __$$_DeleteFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({NoteFailure noteFailure});

  $NoteFailureCopyWith<$Res> get noteFailure;
}

/// @nodoc
class __$$_DeleteFailureCopyWithImpl<$Res>
    extends _$NoteActorStateCopyWithImpl<$Res, _$_DeleteFailure>
    implements _$$_DeleteFailureCopyWith<$Res> {
  __$$_DeleteFailureCopyWithImpl(
      _$_DeleteFailure _value, $Res Function(_$_DeleteFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noteFailure = null,
  }) {
    return _then(_$_DeleteFailure(
      null == noteFailure
          ? _value.noteFailure
          : noteFailure // ignore: cast_nullable_to_non_nullable
              as NoteFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NoteFailureCopyWith<$Res> get noteFailure {
    return $NoteFailureCopyWith<$Res>(_value.noteFailure, (value) {
      return _then(_value.copyWith(noteFailure: value));
    });
  }
}

/// @nodoc

class _$_DeleteFailure implements _DeleteFailure {
  const _$_DeleteFailure(this.noteFailure);

  @override
  final NoteFailure noteFailure;

  @override
  String toString() {
    return 'NoteActorState.deleteFailure(noteFailure: $noteFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteFailure &&
            (identical(other.noteFailure, noteFailure) ||
                other.noteFailure == noteFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, noteFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteFailureCopyWith<_$_DeleteFailure> get copyWith =>
      __$$_DeleteFailureCopyWithImpl<_$_DeleteFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intial,
    required TResult Function() actionInProgess,
    required TResult Function(NoteFailure noteFailure) deleteFailure,
    required TResult Function() deleteSuccess,
  }) {
    return deleteFailure(noteFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? intial,
    TResult? Function()? actionInProgess,
    TResult? Function(NoteFailure noteFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
  }) {
    return deleteFailure?.call(noteFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intial,
    TResult Function()? actionInProgess,
    TResult Function(NoteFailure noteFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(noteFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Intial value) intial,
    required TResult Function(_ActionInProgess value) actionInProgess,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
  }) {
    return deleteFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Intial value)? intial,
    TResult? Function(_ActionInProgess value)? actionInProgess,
    TResult? Function(_DeleteFailure value)? deleteFailure,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
  }) {
    return deleteFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Intial value)? intial,
    TResult Function(_ActionInProgess value)? actionInProgess,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(this);
    }
    return orElse();
  }
}

abstract class _DeleteFailure implements NoteActorState {
  const factory _DeleteFailure(final NoteFailure noteFailure) =
      _$_DeleteFailure;

  NoteFailure get noteFailure;
  @JsonKey(ignore: true)
  _$$_DeleteFailureCopyWith<_$_DeleteFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteSuccessCopyWith<$Res> {
  factory _$$_DeleteSuccessCopyWith(
          _$_DeleteSuccess value, $Res Function(_$_DeleteSuccess) then) =
      __$$_DeleteSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DeleteSuccessCopyWithImpl<$Res>
    extends _$NoteActorStateCopyWithImpl<$Res, _$_DeleteSuccess>
    implements _$$_DeleteSuccessCopyWith<$Res> {
  __$$_DeleteSuccessCopyWithImpl(
      _$_DeleteSuccess _value, $Res Function(_$_DeleteSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DeleteSuccess implements _DeleteSuccess {
  const _$_DeleteSuccess();

  @override
  String toString() {
    return 'NoteActorState.deleteSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DeleteSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intial,
    required TResult Function() actionInProgess,
    required TResult Function(NoteFailure noteFailure) deleteFailure,
    required TResult Function() deleteSuccess,
  }) {
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? intial,
    TResult? Function()? actionInProgess,
    TResult? Function(NoteFailure noteFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
  }) {
    return deleteSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intial,
    TResult Function()? actionInProgess,
    TResult Function(NoteFailure noteFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Intial value) intial,
    required TResult Function(_ActionInProgess value) actionInProgess,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
  }) {
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Intial value)? intial,
    TResult? Function(_ActionInProgess value)? actionInProgess,
    TResult? Function(_DeleteFailure value)? deleteFailure,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
  }) {
    return deleteSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Intial value)? intial,
    TResult Function(_ActionInProgess value)? actionInProgess,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteSuccess implements NoteActorState {
  const factory _DeleteSuccess() = _$_DeleteSuccess;
}

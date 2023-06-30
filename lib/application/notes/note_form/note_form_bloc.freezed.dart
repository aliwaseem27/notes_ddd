// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NoteFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function(KtList<TodoItemPrimitive> todos) todosChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String bodyStr)? bodyChanged,
    TResult? Function(Color color)? colorChanged,
    TResult? Function(KtList<TodoItemPrimitive> todos)? todosChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(KtList<TodoItemPrimitive> todos)? todosChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_TodosChanged value) todosChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BodyChanged value)? bodyChanged,
    TResult? Function(_ColorChanged value)? colorChanged,
    TResult? Function(_TodosChanged value)? todosChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_TodosChanged value)? todosChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteFormEventCopyWith<$Res> {
  factory $NoteFormEventCopyWith(
          NoteFormEvent value, $Res Function(NoteFormEvent) then) =
      _$NoteFormEventCopyWithImpl<$Res, NoteFormEvent>;
}

/// @nodoc
class _$NoteFormEventCopyWithImpl<$Res, $Val extends NoteFormEvent>
    implements $NoteFormEventCopyWith<$Res> {
  _$NoteFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_BodyChangedCopyWith<$Res> {
  factory _$$_BodyChangedCopyWith(
          _$_BodyChanged value, $Res Function(_$_BodyChanged) then) =
      __$$_BodyChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String bodyStr});
}

/// @nodoc
class __$$_BodyChangedCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res, _$_BodyChanged>
    implements _$$_BodyChangedCopyWith<$Res> {
  __$$_BodyChangedCopyWithImpl(
      _$_BodyChanged _value, $Res Function(_$_BodyChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bodyStr = null,
  }) {
    return _then(_$_BodyChanged(
      null == bodyStr
          ? _value.bodyStr
          : bodyStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BodyChanged implements _BodyChanged {
  const _$_BodyChanged(this.bodyStr);

  @override
  final String bodyStr;

  @override
  String toString() {
    return 'NoteFormEvent.bodyChanged(bodyStr: $bodyStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BodyChanged &&
            (identical(other.bodyStr, bodyStr) || other.bodyStr == bodyStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bodyStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BodyChangedCopyWith<_$_BodyChanged> get copyWith =>
      __$$_BodyChangedCopyWithImpl<_$_BodyChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function(KtList<TodoItemPrimitive> todos) todosChanged,
  }) {
    return bodyChanged(bodyStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String bodyStr)? bodyChanged,
    TResult? Function(Color color)? colorChanged,
    TResult? Function(KtList<TodoItemPrimitive> todos)? todosChanged,
  }) {
    return bodyChanged?.call(bodyStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(KtList<TodoItemPrimitive> todos)? todosChanged,
    required TResult orElse(),
  }) {
    if (bodyChanged != null) {
      return bodyChanged(bodyStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_TodosChanged value) todosChanged,
  }) {
    return bodyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BodyChanged value)? bodyChanged,
    TResult? Function(_ColorChanged value)? colorChanged,
    TResult? Function(_TodosChanged value)? todosChanged,
  }) {
    return bodyChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_TodosChanged value)? todosChanged,
    required TResult orElse(),
  }) {
    if (bodyChanged != null) {
      return bodyChanged(this);
    }
    return orElse();
  }
}

abstract class _BodyChanged implements NoteFormEvent {
  const factory _BodyChanged(final String bodyStr) = _$_BodyChanged;

  String get bodyStr;
  @JsonKey(ignore: true)
  _$$_BodyChangedCopyWith<_$_BodyChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ColorChangedCopyWith<$Res> {
  factory _$$_ColorChangedCopyWith(
          _$_ColorChanged value, $Res Function(_$_ColorChanged) then) =
      __$$_ColorChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({Color color});
}

/// @nodoc
class __$$_ColorChangedCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res, _$_ColorChanged>
    implements _$$_ColorChangedCopyWith<$Res> {
  __$$_ColorChangedCopyWithImpl(
      _$_ColorChanged _value, $Res Function(_$_ColorChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
  }) {
    return _then(_$_ColorChanged(
      null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$_ColorChanged implements _ColorChanged {
  const _$_ColorChanged(this.color);

  @override
  final Color color;

  @override
  String toString() {
    return 'NoteFormEvent.colorChanged(color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ColorChanged &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ColorChangedCopyWith<_$_ColorChanged> get copyWith =>
      __$$_ColorChangedCopyWithImpl<_$_ColorChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function(KtList<TodoItemPrimitive> todos) todosChanged,
  }) {
    return colorChanged(color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String bodyStr)? bodyChanged,
    TResult? Function(Color color)? colorChanged,
    TResult? Function(KtList<TodoItemPrimitive> todos)? todosChanged,
  }) {
    return colorChanged?.call(color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(KtList<TodoItemPrimitive> todos)? todosChanged,
    required TResult orElse(),
  }) {
    if (colorChanged != null) {
      return colorChanged(color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_TodosChanged value) todosChanged,
  }) {
    return colorChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BodyChanged value)? bodyChanged,
    TResult? Function(_ColorChanged value)? colorChanged,
    TResult? Function(_TodosChanged value)? todosChanged,
  }) {
    return colorChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_TodosChanged value)? todosChanged,
    required TResult orElse(),
  }) {
    if (colorChanged != null) {
      return colorChanged(this);
    }
    return orElse();
  }
}

abstract class _ColorChanged implements NoteFormEvent {
  const factory _ColorChanged(final Color color) = _$_ColorChanged;

  Color get color;
  @JsonKey(ignore: true)
  _$$_ColorChangedCopyWith<_$_ColorChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TodosChangedCopyWith<$Res> {
  factory _$$_TodosChangedCopyWith(
          _$_TodosChanged value, $Res Function(_$_TodosChanged) then) =
      __$$_TodosChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({KtList<TodoItemPrimitive> todos});
}

/// @nodoc
class __$$_TodosChangedCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res, _$_TodosChanged>
    implements _$$_TodosChangedCopyWith<$Res> {
  __$$_TodosChangedCopyWithImpl(
      _$_TodosChanged _value, $Res Function(_$_TodosChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
  }) {
    return _then(_$_TodosChanged(
      null == todos
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as KtList<TodoItemPrimitive>,
    ));
  }
}

/// @nodoc

class _$_TodosChanged implements _TodosChanged {
  const _$_TodosChanged(this.todos);

  @override
  final KtList<TodoItemPrimitive> todos;

  @override
  String toString() {
    return 'NoteFormEvent.todosChanged(todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodosChanged &&
            (identical(other.todos, todos) || other.todos == todos));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todos);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodosChangedCopyWith<_$_TodosChanged> get copyWith =>
      __$$_TodosChangedCopyWithImpl<_$_TodosChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function(KtList<TodoItemPrimitive> todos) todosChanged,
  }) {
    return todosChanged(todos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String bodyStr)? bodyChanged,
    TResult? Function(Color color)? colorChanged,
    TResult? Function(KtList<TodoItemPrimitive> todos)? todosChanged,
  }) {
    return todosChanged?.call(todos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(KtList<TodoItemPrimitive> todos)? todosChanged,
    required TResult orElse(),
  }) {
    if (todosChanged != null) {
      return todosChanged(todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_TodosChanged value) todosChanged,
  }) {
    return todosChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BodyChanged value)? bodyChanged,
    TResult? Function(_ColorChanged value)? colorChanged,
    TResult? Function(_TodosChanged value)? todosChanged,
  }) {
    return todosChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_TodosChanged value)? todosChanged,
    required TResult orElse(),
  }) {
    if (todosChanged != null) {
      return todosChanged(this);
    }
    return orElse();
  }
}

abstract class _TodosChanged implements NoteFormEvent {
  const factory _TodosChanged(final KtList<TodoItemPrimitive> todos) =
      _$_TodosChanged;

  KtList<TodoItemPrimitive> get todos;
  @JsonKey(ignore: true)
  _$$_TodosChangedCopyWith<_$_TodosChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

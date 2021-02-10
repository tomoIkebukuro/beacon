// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'favorite.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FavoriteTearOff {
  const _$FavoriteTearOff();

// ignore: unused_element
  _Favorite call(
      {List<Thread> threads = const <Thread>[], String command, String id}) {
    return _Favorite(
      threads: threads,
      command: command,
      id: id,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Favorite = _$FavoriteTearOff();

/// @nodoc
mixin _$Favorite {
  List<Thread> get threads;
  String get command;
  String get id;

  $FavoriteCopyWith<Favorite> get copyWith;
}

/// @nodoc
abstract class $FavoriteCopyWith<$Res> {
  factory $FavoriteCopyWith(Favorite value, $Res Function(Favorite) then) =
      _$FavoriteCopyWithImpl<$Res>;
  $Res call({List<Thread> threads, String command, String id});
}

/// @nodoc
class _$FavoriteCopyWithImpl<$Res> implements $FavoriteCopyWith<$Res> {
  _$FavoriteCopyWithImpl(this._value, this._then);

  final Favorite _value;
  // ignore: unused_field
  final $Res Function(Favorite) _then;

  @override
  $Res call({
    Object threads = freezed,
    Object command = freezed,
    Object id = freezed,
  }) {
    return _then(_value.copyWith(
      threads: threads == freezed ? _value.threads : threads as List<Thread>,
      command: command == freezed ? _value.command : command as String,
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

/// @nodoc
abstract class _$FavoriteCopyWith<$Res> implements $FavoriteCopyWith<$Res> {
  factory _$FavoriteCopyWith(_Favorite value, $Res Function(_Favorite) then) =
      __$FavoriteCopyWithImpl<$Res>;
  @override
  $Res call({List<Thread> threads, String command, String id});
}

/// @nodoc
class __$FavoriteCopyWithImpl<$Res> extends _$FavoriteCopyWithImpl<$Res>
    implements _$FavoriteCopyWith<$Res> {
  __$FavoriteCopyWithImpl(_Favorite _value, $Res Function(_Favorite) _then)
      : super(_value, (v) => _then(v as _Favorite));

  @override
  _Favorite get _value => super._value as _Favorite;

  @override
  $Res call({
    Object threads = freezed,
    Object command = freezed,
    Object id = freezed,
  }) {
    return _then(_Favorite(
      threads: threads == freezed ? _value.threads : threads as List<Thread>,
      command: command == freezed ? _value.command : command as String,
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

/// @nodoc
class _$_Favorite implements _Favorite {
  const _$_Favorite({this.threads = const <Thread>[], this.command, this.id})
      : assert(threads != null);

  @JsonKey(defaultValue: const <Thread>[])
  @override
  final List<Thread> threads;
  @override
  final String command;
  @override
  final String id;

  @override
  String toString() {
    return 'Favorite(threads: $threads, command: $command, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Favorite &&
            (identical(other.threads, threads) ||
                const DeepCollectionEquality()
                    .equals(other.threads, threads)) &&
            (identical(other.command, command) ||
                const DeepCollectionEquality()
                    .equals(other.command, command)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(threads) ^
      const DeepCollectionEquality().hash(command) ^
      const DeepCollectionEquality().hash(id);

  @override
  _$FavoriteCopyWith<_Favorite> get copyWith =>
      __$FavoriteCopyWithImpl<_Favorite>(this, _$identity);
}

abstract class _Favorite implements Favorite {
  const factory _Favorite({List<Thread> threads, String command, String id}) =
      _$_Favorite;

  @override
  List<Thread> get threads;
  @override
  String get command;
  @override
  String get id;
  @override
  _$FavoriteCopyWith<_Favorite> get copyWith;
}

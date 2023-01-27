// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'navigation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NavigationState {
  String get bottomNavItems => throw _privateConstructorUsedError;
  Pages get pageType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavigationStateCopyWith<NavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationStateCopyWith<$Res> {
  factory $NavigationStateCopyWith(
          NavigationState value, $Res Function(NavigationState) then) =
      _$NavigationStateCopyWithImpl<$Res>;
  $Res call({String bottomNavItems, Pages pageType});
}

/// @nodoc
class _$NavigationStateCopyWithImpl<$Res>
    implements $NavigationStateCopyWith<$Res> {
  _$NavigationStateCopyWithImpl(this._value, this._then);

  final NavigationState _value;
  // ignore: unused_field
  final $Res Function(NavigationState) _then;

  @override
  $Res call({
    Object? bottomNavItems = freezed,
    Object? pageType = freezed,
  }) {
    return _then(_value.copyWith(
      bottomNavItems: bottomNavItems == freezed
          ? _value.bottomNavItems
          : bottomNavItems // ignore: cast_nullable_to_non_nullable
              as String,
      pageType: pageType == freezed
          ? _value.pageType
          : pageType // ignore: cast_nullable_to_non_nullable
              as Pages,
    ));
  }
}

/// @nodoc
abstract class _$$_NavigationStateCopyWith<$Res>
    implements $NavigationStateCopyWith<$Res> {
  factory _$$_NavigationStateCopyWith(
          _$_NavigationState value, $Res Function(_$_NavigationState) then) =
      __$$_NavigationStateCopyWithImpl<$Res>;
  @override
  $Res call({String bottomNavItems, Pages pageType});
}

/// @nodoc
class __$$_NavigationStateCopyWithImpl<$Res>
    extends _$NavigationStateCopyWithImpl<$Res>
    implements _$$_NavigationStateCopyWith<$Res> {
  __$$_NavigationStateCopyWithImpl(
      _$_NavigationState _value, $Res Function(_$_NavigationState) _then)
      : super(_value, (v) => _then(v as _$_NavigationState));

  @override
  _$_NavigationState get _value => super._value as _$_NavigationState;

  @override
  $Res call({
    Object? bottomNavItems = freezed,
    Object? pageType = freezed,
  }) {
    return _then(_$_NavigationState(
      bottomNavItems: bottomNavItems == freezed
          ? _value.bottomNavItems
          : bottomNavItems // ignore: cast_nullable_to_non_nullable
              as String,
      pageType: pageType == freezed
          ? _value.pageType
          : pageType // ignore: cast_nullable_to_non_nullable
              as Pages,
    ));
  }
}

/// @nodoc

class _$_NavigationState implements _NavigationState {
  const _$_NavigationState(
      {required this.bottomNavItems, required this.pageType});

  @override
  final String bottomNavItems;
  @override
  final Pages pageType;

  @override
  String toString() {
    return 'NavigationState(bottomNavItems: $bottomNavItems, pageType: $pageType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NavigationState &&
            const DeepCollectionEquality()
                .equals(other.bottomNavItems, bottomNavItems) &&
            const DeepCollectionEquality().equals(other.pageType, pageType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(bottomNavItems),
      const DeepCollectionEquality().hash(pageType));

  @JsonKey(ignore: true)
  @override
  _$$_NavigationStateCopyWith<_$_NavigationState> get copyWith =>
      __$$_NavigationStateCopyWithImpl<_$_NavigationState>(this, _$identity);
}

abstract class _NavigationState implements NavigationState {
  const factory _NavigationState(
      {required final String bottomNavItems,
      required final Pages pageType}) = _$_NavigationState;

  @override
  String get bottomNavItems;
  @override
  Pages get pageType;
  @override
  @JsonKey(ignore: true)
  _$$_NavigationStateCopyWith<_$_NavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

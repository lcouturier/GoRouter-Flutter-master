import 'package:androidrouting/controller/pages.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_state.freezed.dart';

@freezed
class NavigationState with _$NavigationState {
  const factory NavigationState({
    required String bottomNavItems,
    required Pages pageType,
  }) = _NavigationState;
}

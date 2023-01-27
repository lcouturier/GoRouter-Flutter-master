import 'package:androidrouting/controller/pages.dart';
import 'package:bloc/bloc.dart';

import 'package:androidrouting/controller/navigation_state.dart';

import '../core/utils/constants.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(const NavigationState(bottomNavItems: Routes.homeNamedPage, pageType: Pages.home));

  void getNavBarItem(Pages pages) {
    final state = pages.when(
        home: () => const NavigationState(bottomNavItems: Routes.homeNamedPage, pageType: Pages.home),
        cards: () => const NavigationState(bottomNavItems: Routes.profileNamedPage, pageType: Pages.cards),
        account: () => const NavigationState(bottomNavItems: Routes.settingsNamedPage, pageType: Pages.account));
    emit(state);
  }
}

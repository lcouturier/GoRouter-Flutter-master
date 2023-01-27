import 'package:androidrouting/controller/navigation_cubit.dart';
import 'package:androidrouting/controller/navigation_state.dart';
import 'package:androidrouting/controller/pages.dart';
import 'package:androidrouting/presentation/shared/named_nav_bar_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../core/utils/constants.dart';

class MainScreen extends StatelessWidget {
  final Widget screen;

  MainScreen({Key? key, required this.screen}) : super(key: key);

  final tabs = [
    NamedNavigationBarItemWidget(
      initialLocation: Routes.homeNamedPage,
      icon: const Icon(Icons.home),
      label: 'Home',
    ),
    NamedNavigationBarItemWidget(
      initialLocation: Routes.profileNamedPage,
      icon: const Icon(Icons.person),
      label: 'Profile',
    ),
    NamedNavigationBarItemWidget(
      initialLocation: Routes.settingsNamedPage,
      icon: const Icon(Icons.settings),
      label: 'Setting',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen,
      bottomNavigationBar: _buildBottomNavigation(context, tabs),
    );
  }
}

Widget _buildBottomNavigation(BuildContext context, List<NamedNavigationBarItemWidget> tabs) {
  return BlocBuilder<NavigationCubit, NavigationState>(
    buildWhen: (previous, current) => previous.pageType != current.pageType,
    builder: (context, state) {
      return BottomNavigationBar(
        onTap: (value) {
          if (state.pageType.index != value) {
            context.read<NavigationCubit>().getNavBarItem(Pages.values[value]);
            context.go(tabs[value].initialLocation);
          }
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(
          size: ((IconTheme.of(context).size)! * 1.3),
        ),
        items: tabs,
        currentIndex: state.pageType.index,
        type: BottomNavigationBarType.fixed,
      );
    },
  );
}

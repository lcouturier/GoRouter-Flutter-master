// ignore_for_file: avoid_print

import 'package:androidrouting/app/routes/go_router_observer.dart';
import 'package:androidrouting/controller/navigation_cubit.dart';
import 'package:androidrouting/presentation/home/home_details_screen.dart';
import 'package:androidrouting/presentation/home/home_screen.dart';
import 'package:androidrouting/presentation/main_screen.dart';
import 'package:androidrouting/presentation/profile/profile_details_screen.dart';
import 'package:androidrouting/presentation/profile/profile_screen.dart';
import 'package:androidrouting/presentation/settings/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../core/utils/constants.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final goRouter = GoRouter(
  initialLocation: Routes.homeNamedPage,
  debugLogDiagnostics: true,
  observers: [GoRouterObserver()],
  navigatorKey: _rootNavigatorKey,
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return BlocProvider(
          create: (context) => NavigationCubit(),
          child: MainScreen(screen: child),
        );
      },
      routes: [
        GoRoute(
          path: Routes.homeNamedPage,
          pageBuilder: (context, state) {
            return NoTransitionPage(
              key: state.pageKey,
              name: state.name,
              child: const HomeScreen(),
            );
          },
          routes: [
            GoRoute(
              name: "details",
              path: "details/:name",
              pageBuilder: (context, state) {
                return NoTransitionPage(
                  key: state.pageKey,
                  name: state.name,
                  child: HomeDetailsScreen(
                    name: state.params["name"]!,
                  ),
                );
              },
            ),
          ],
        ),
        GoRoute(
          path: Routes.profileNamedPage,
          pageBuilder: (context, state) {
            return NoTransitionPage(
              key: state.pageKey,
              name: state.name,
              child: const ProfileScreen(),
            );
          },
          routes: [
            GoRoute(
              path: Routes.profileDetailsNamedPage,
              builder: (context, state) {
                return const ProfileDetailsScreen();
              },
            ),
          ],
        ),
        GoRoute(
          path: Routes.settingsNamedPage,
          pageBuilder: (context, state) {
            return NoTransitionPage(
              key: state.pageKey,
              name: state.name,
              child: const SettingScreen(),
            );
          },
        ),
      ],
    ),
  ],
);

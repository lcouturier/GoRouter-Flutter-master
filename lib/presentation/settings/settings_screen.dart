import 'package:androidrouting/app/routes/app_routes.dart';
import 'package:androidrouting/presentation/profile/profile_screen.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  final VoidCallback? onLeaveScreen;

  const SettingScreen({Key? key, this.onLeaveScreen}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> with GoRouterAware {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Settings',
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    mainObserver.subscribe(this, ModalRoute.of(context) as PageRoute);
  }

  @override
  void dispose() {
    mainObserver.unsubscribe(this);
    super.dispose();
  }
}

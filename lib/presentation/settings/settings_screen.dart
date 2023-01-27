import 'package:flutter/material.dart';
import 'package:lifecycle_aware_state/lifecycle_aware_state.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends LifecycleAwareState<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Settings',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

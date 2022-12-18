import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainEditProfile extends StatefulWidget {
  const MainEditProfile({super.key});

  @override
  State<MainEditProfile> createState() => _MainEditProfileState();
}

class _MainEditProfileState extends State<MainEditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 10),
          child: Text('Edit Profile'),
        ),
      ),
    );
  }
}

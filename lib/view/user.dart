import 'package:flutter/material.dart';

class UserView extends StatelessWidget {
  const UserView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("P R O F I L E"), centerTitle: true,),
      body: const Center(child: Text("Work in Progress"),),
    );
  }
}

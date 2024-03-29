import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("E - C L O T H I N G"), centerTitle: true,),
      body: const Center(child: Text("Work in Progress"),),
    );
  }
}

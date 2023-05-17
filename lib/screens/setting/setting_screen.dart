import 'package:dom_sys/widgets/custom_appbar.dart';
import 'package:dom_sys/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';


class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: CustomAppBar(context: context, title: "Setting"),
      drawer:const CustomDrawer(),
      body: const Center(child: Text("No Design for this page yet!")),
    );
  }
}

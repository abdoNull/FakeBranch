import 'package:dom_sys/widgets/custom_appbar.dart';
import 'package:dom_sys/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';


class MedicalhisotryScreen extends StatelessWidget {
  const MedicalhisotryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: CustomAppBar(context: context, title: "Medical Hisotry"),
      drawer:const CustomDrawer(),
      body: const Center(child: Text("No Design for this page yet!")),
    );
  }
}
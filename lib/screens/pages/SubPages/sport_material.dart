import 'package:flutter/material.dart';
import 'package:test/const/app_const.dart';

class SportMaterial extends StatelessWidget {
  const SportMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sport Materials"),
        centerTitle: true,
      ),
      body: GridView.builder(
        itemCount: Banners.sportMaterials.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.8),
        itemBuilder: (BuildContext context, int index) {
          return Banners.sportMaterials[index];
        },
      ),
    );
  }
}

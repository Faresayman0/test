import 'package:flutter/material.dart';
import 'package:test/const/app_const.dart';
import 'package:test/screens/pages/SubPages/Favorite/discribtion_fav1.dart';
import 'package:test/screens/pages/SubPages/Favorite/discribtion_fav2.dart';
import 'package:test/screens/pages/SubPages/Favorite/discribtion_fav3.dart';

class Favorite extends StatelessWidget {
  const Favorite({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorite"),
        centerTitle: true,
      ),
      body: GridView.builder(
        itemCount: Banners.sportMaterials.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              // التحقق مما إذا كان الفهرس يتوافق مع القيمة المطلوبة
              if (index == 0) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const ProductDetailScreen1();
                }));
              } else if (index == 1) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const ProductDetailPage2();
                }));
              } else if (index == 2) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const ProductDetailPage3();
                }));
              } else {}
            },
            child: Banners.Favorite[index],
          );
        },
      ),
    );
  }
}

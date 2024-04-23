import 'package:flutter/material.dart';
import 'package:test/widget/custom_page.dart';

class ProductDetailPage2 extends StatelessWidget {
  const ProductDetailPage2({super.key});

  @override
  Widget build(BuildContext context) {
    // تعريف المتغيرات اللازمة لعرض الصفحة
    const String productName = 'Protein';
    const String price = "3000";
    final List<String> sizes = ['36', '37', '38', '39', '40'];
    final List<Color> colors = [
      const Color(0xff263D47),
      const Color(0xff435E33),
      const Color(0xff74450E),
    ]; // قائمة الألوان
    const String imagePath =
        'asset/images/Favorite/pngwing 3.png'; // مسار الصورة
    const String description = "Nike is a polyester fabric designed to help you keep dry so you can more comfortably work harder, longer.";
    return ProductDetailPageCustom(
      productName: productName,
      price: price,
      sizes: sizes,
      colors: colors,
      imagePath: imagePath, description: description, // تمرير مسار الصورة
    );
  }
}

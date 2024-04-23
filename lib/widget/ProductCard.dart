import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String price;
  final String? originalPrice;
  final double rating;
  final IconData icon; // معامل جديد لتحديد الأيقونة

  const ProductCard({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.price,
    this.originalPrice,
    required this.rating,
    this.icon = Icons.favorite_border, // قيمة افتراضية للأيقونة
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        elevation: 4.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: SizedBox(
          width: 200,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(imagePath),
              ),
              Align(
                alignment: Alignment.topRight,
                child:
                    Icon(icon, color: Colors.red), // استخدام الأيقونة المحددة
              ),
              Positioned(
                bottom: 0,
                left: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    Row(
                      children: [
                        Text(price,
                            style: const TextStyle(
                                fontSize: 16,
                                color: Colors.red,
                                fontWeight: FontWeight.bold)),
                        if (originalPrice != null)
                          Text(originalPrice!,
                              style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough)),
                        const SizedBox(
                          width: 20,
                        ),
                        Row(
                          children: [
                            const Icon(Icons.star,
                                color: Colors.orange, size: 20),
                            Text(rating.toString(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

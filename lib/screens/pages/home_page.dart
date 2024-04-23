import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/widgets.dart';
import 'package:test/const/app_const.dart';
import 'package:test/screens/pages/SubPages/main/healthy_product.dart';
import 'package:test/screens/pages/SubPages/main/sport_material.dart';
import 'package:test/screens/pages/SubPages/main/sport_wear.dart';
import 'package:test/widget/ProductCard.dart';
import 'package:test/widget/main_product.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // الجزء العلوي الثابت: الصورة
          Positioned(
            child: Image.asset(
              "asset/images/Ellipse 27.png",
            ),
          ),
          CustomScrollView(
            slivers: <Widget>[
              // شريط البحث والأيقونة ضمن SliverToBoxAdapter ليتم تمريرهما
              SliverToBoxAdapter(
                child: Container(
                  padding: const EdgeInsets.only(
                      top: 50, left: 30, right: 30, bottom: 90),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            prefix: const SizedBox(
                              width: 20,
                            ),
                            contentPadding: const EdgeInsets.all(1),
                            suffixIcon: const Icon(Icons.search),
                            hintText: "Search",
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                          width: 10), // لإضافة مسافة بين الحقل والأيقونة
                      IconButton(
                        icon: const Icon(
                          Icons.notifications_active,
                          color: Colors.white,
                          size: 26,
                        ),
                        onPressed: () {
                          // أضف وظيفة الأيقونة هنا
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomProductWidget(
                            onTap: () {},
                            imagePath: "asset/images/home/pngwing 2.png",
                            title: "Healthy Products"),
                        CustomProductWidget(
                            onTap: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return const SportMaterial();
                              }));
                            },
                            imagePath: "asset/images/home/pngwing 4.png",
                            title: "Sport Materials"),
                        CustomProductWidget(
                            onTap: () {},
                            imagePath: "asset/images/home/imagesh.png",
                            title: "Sportswear"),
                      ],
                    ),
                    SizedBox(
                      height: 150,
                      child: Swiper(
                        autoplay: true,
                        itemBuilder: (BuildContext context, int index) {
                          return Image.asset(Banners.banners[index]);
                        },
                        itemCount: Banners.banners.length,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "SALES DISCOUNT",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "View All",
                              style: TextStyle(
                                color: Color(0xffEE7A53),
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 200,
                      child: GridView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: Banners.salesDiscount.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1, childAspectRatio: 0.8),
                        itemBuilder: (BuildContext context, int index) {
                          return Banners.salesDiscount[index];
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

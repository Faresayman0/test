import 'package:flutter/material.dart';
import 'package:test/const/app_const.dart';

class SportWear extends StatefulWidget {
  const SportWear({super.key});

  @override
  _SportWearState createState() => _SportWearState();
}

class _SportWearState extends State<SportWear> {
  int _selectedIndex = 0;
  final List<String> categories = ["All", "Shoes", "Top", "Suite", "Brassiere"];

  Widget _buildCategoryWidget() {
    if (_selectedIndex == 0) {
      return GridView.builder(
        itemCount: Banners.sportAll.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Banners.sportAll[index];
        },
      );
    } else if (_selectedIndex == 1) {
      return GridView.builder(
        itemCount: Banners.sportShose.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Banners.sportShose[index];
        },
      );
    } else if (_selectedIndex == 2) {
      return GridView.builder(
        itemCount: Banners.sporttop.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Banners.sporttop[index];
        },
      );
    } else if (_selectedIndex == 3) {
      return GridView.builder(
        itemCount: Banners.sportsuite.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Banners.sportsuite[index];
        },
      );
    } else if (_selectedIndex == 4) {
      return GridView.builder(
        itemCount: Banners.sportBrassiere.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Banners.sportBrassiere[index];
        },
      );
    }

    return Container();
  }
  String get appBarTitle {
    if (_selectedIndex == 0) {
      return 'Sportswear';
    } else {
      return categories[_selectedIndex];
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:  Text(appBarTitle),
      ),
      body: Column(children: [
        SizedBox(
          height: 50,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                });
              },
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: _selectedIndex == index ? Colors.orange : Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  categories[index],
                  style: TextStyle(
                    color: _selectedIndex == index
                        ? Colors.white
                        : Colors.grey[600],
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(child: _buildCategoryWidget()),
      ]),
    );
  }
}
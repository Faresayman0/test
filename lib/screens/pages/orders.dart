import 'package:flutter/material.dart';
import 'package:test/screens/pages/SubPages/order/address.dart';
import 'package:test/widget/orders/order.dart';

class Orders extends StatelessWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
        title: const Text(
          "My Cart",
          style: TextStyle(fontSize: 23),
        ),
        centerTitle: true,
        actions: const [
          Text(
            "Clear All   ",
            style: TextStyle(color: Colors.red, fontSize: 17),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                ProductWidget(
                  imagePath: 'asset/images/Favorite/pngwing 3 (1).png',
                  title: 'Protein',
                  price: 650.00,
                  onAdd: () {},
                  onRemove: () {},
                  backgroundColor: const Color(0xffE2FA9E),
                  quantity: 1,
                ),
                ProductWidget(
                  quantity: 1,
                  colorText: 'Blue',
                  sizeText: '38',
                  typetext: 'size',
                  imagePath: 'asset/images/Favorite/pngwing 3 (1).png',
                  title: 'Protein',
                  price: 650.00,
                  onAdd: () {},
                  onRemove: () {},
                  backgroundColor: const Color(0xffE2FA9E),
                ),
                ProductWidget(
                  quantity: 4,
                  colorText: 'Black',
                  sizeText: '3kg',
                  typetext: 'Poids',
                  imagePath: 'asset/images/Favorite/pngwing 3 (1).png',
                  title: 'Protein',
                  price: 650.00,
                  onAdd: () {},
                  onRemove: () {},
                  backgroundColor: const Color(0xffE2FA9E),
                ),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Material(
              elevation: 10,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Column(
                      children: [
                        Text(
                          "Total Price",
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "7450.00 DA",
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 20),
                        backgroundColor: const Color(0xffEE7A53),
                      ),
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const AddAddressPage();
                        }));
                      },
                      child: const Text(
                        "Buy Now",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

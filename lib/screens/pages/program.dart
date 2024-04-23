import 'package:flutter/material.dart';

class Progeram extends StatelessWidget {
  const Progeram({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Itemsone(),
            ItemstwoAvailable(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Top Coaches",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemBuilder: (context, index) => TopCoachesItems(),
                        itemCount: 10,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TopCoachesItems extends StatelessWidget {
  const TopCoachesItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shadowColor: Colors.grey,
      clipBehavior: Clip.none,
      child: Row(
        children: [
          Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            width: 90,
            margin: const EdgeInsets.only(left: 3, top: 5, bottom: 5, right: 5),
            child: const Image(
                image: NetworkImage(
                    "https://s3-alpha-sig.figma.com/img/f7c6/cb12/00891a434e88b5a0b6497d870719a56f?Expires=1711929600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=LywZGxwtMnC2z9WNiRqSdqzfjliIHJOYF3UlG64xktgXGzDmwFMb9YEpnuQnzO47rW7wudhkVHFu5NAtFjO40EUL41ohDRZAUBTDOyZ0A45HMI4St~3Z3KpP-UuD62BxiLTphhE3X~THXEUhLzckaTGYSkJbvAZOYck5lB0EiOuXo8dMfuU~wDldoYmGsGSX2fp52DwTZWZnKTKT7klh1Mj9O6hoSWT1Et1qA6RKAI~57lqq-ZVRiMrGvy~1QeyisLNQlFNJYtgrYLii~qEsxm4wLeoj90eq5uZREIbtOSUbaaFGdkjP~p4A25MfOMaEcAkGwq0Nn77QzJGEoMiYfA__")),
          ),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Cocah Ahmed",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Color(0xff35A072),
                        ),
                        Text(
                          "3.5",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Sports nutrition and fitness  \n trainer",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.watch_later,
                      color: Color(0xff35A072),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      "8:00 AM - 21:00 PM",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "3000DA Par Mois",
                  style: TextStyle(
                      color: Color(0xff35A072),
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ItemstwoAvailable extends StatelessWidget {
  const ItemstwoAvailable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Available Coaches",
            style: TextStyle(
                color: Colors.black87,
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 100,
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(
                width: 10,
              ),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => const AvailableCoaches(),
              itemCount: 6,
            ),
          )
        ],
      ),
    );
  }
}

class AvailableCoaches extends StatelessWidget {
  const AvailableCoaches({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
            clipBehavior: Clip.none,
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                color: const Color(0xffDAE8E2),
                borderRadius: BorderRadiusDirectional.circular(20)),
            child: const Image(
                image: NetworkImage(
              "https://s3-alpha-sig.figma.com/img/e1e2/b327/8c358875ff0c81258b37a995d8fde0ea?Expires=1711929600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=WiSOVya~k4m75K4R-9w~brIOF5O57drjPBa04ST8HhV4S6Tm1NqL4NTPekipTL2ZRVRwx3XMoE~OQdM5R0gQ5Duv7zpG3D7r7H-fkBaYMy~sOVQdr9H3ImjJ7dTR79xUhx3bbXSbueUCiSkmP5hYsUB4mU5xb~11Q5GVpDE9tHZE~UTR~voNN-~aa~23V-1HPazUD7u23lrrzFX6thm1AZPzybIaYE95rA12wUV48WChUNDMwEaFpzjn4ZTDapc~OEKQQ9p~qGuSnahKNrh52xCPYAEG33RIdXwF40hLdAozhLYklpH43nGQB3sv6agPGC0ac0svpsLHyGAJYrez5w__",
            ))),
        const Positioned(
          right: -5,
          top: -8,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 15,
            child: CircleAvatar(
              backgroundColor: Color(0xff0BD71F),
              radius: 7,
            ),
          ),
        ),
      ],
    );
  }
}

class Itemsone extends StatelessWidget {
  const Itemsone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.24,
      decoration: const BoxDecoration(
        color: Color(0xff35A072),
        borderRadius: BorderRadiusDirectional.only(
          bottomEnd: Radius.circular(50),
          bottomStart: Radius.circular(50),
        ),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 30, top: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Find your desired",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "Coach Right Now!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          SearchItems(),
        ],
      ),
    );
  }
}

class SearchItems extends StatelessWidget {
  const SearchItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(25)),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Search a coach",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
          Icon(
            Icons.search,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}

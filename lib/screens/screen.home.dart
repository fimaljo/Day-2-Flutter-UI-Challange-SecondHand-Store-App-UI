import 'package:day_2_secondhand_store_app/screens/item.details.screen.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomeAppBar(),
              const SizedBox(height: 20),
              const CustomeBanner(),
              itemList(size)
            ],
          ),
        ),
      ),
    );
  }

  SizedBox itemList(Size size) {
    return SizedBox(
      width: size.width,
      height: size.height,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          childAspectRatio: 0.75,
          mainAxisSpacing: 10,
        ),
        itemCount: 15,
        itemBuilder: (context, index) {
          return ItemCard();
        },
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ItemDetailsScreen(),
            ));
          },
          child: Container(
            padding: EdgeInsets.all(8),
            height: 180,
            width: 160,
            decoration: BoxDecoration(
              color: Colors.red,
              image: DecorationImage(
                  image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNswvYNrMqh7WAaSNJ9WLrkH4N7J30CQYFkg&usqp=CAU",
                  ),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  child: Center(
                    child: Icon(Icons.favorite_border_outlined),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.all(8 / 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Wool sweater"),
              Text(
                "\$ 8",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class CustomeBanner extends StatelessWidget {
  const CustomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: 150,
      width: size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                "https://wforwoman.gumlet.io/commonsection/1654667187W-mobile-banner.jpg",
              ),
              fit: BoxFit.cover),
          color: Colors.red,
          borderRadius: BorderRadius.circular(20)),
    );
  }
}

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello, Marina",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
            Text("Let's Start Shopping"),
          ],
        ),
        Spacer(),
        Icon(
          Icons.search,
          size: 25,
        )
      ],
    );
  }
}

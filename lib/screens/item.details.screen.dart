import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ItemDetailsScreen extends StatelessWidget {
  const ItemDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 300,
                width: size.width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  // image: DecorationImage(
                  //   image: NetworkImage(
                  //     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNswvYNrMqh7WAaSNJ9WLrkH4N7J30CQYFkg&usqp=CAU",
                  //   ),
                  //   fit: BoxFit.cover,
                  // ),
                ),
                child: Hero(
                  tag: "product",
                  child: Image.network(
                    height: 160,
                    width: 160,
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNswvYNrMqh7WAaSNJ9WLrkH4N7J30CQYFkg&usqp=CAU",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

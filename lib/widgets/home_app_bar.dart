import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          const Icon(
            Icons.sort,
            size: 30,
            color: Colors.red,
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              "MEGA SHOP",
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent),
            ),
          ),
          const Spacer(),
          Badge(
            badgeColor: Colors.red,
            padding: const EdgeInsets.all(7),
            badgeContent: const Text(
              "3",
              style: TextStyle(color: Colors.white),
            ),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'CartScreen');
              },
              child: const Icon(
                Icons.shopping_cart_sharp,
                size: 30,
                color: Color.fromARGB(207, 244, 67, 54),
              ),
            ),
          )
        ],
      ),
    );
  }
}

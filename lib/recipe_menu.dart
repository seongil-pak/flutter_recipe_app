import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          menuitem(Icons.food_bank, 'All'),
          SizedBox(
            width: 20,
          ),
          menuitem(Icons.coffee, 'Coffee'),
          SizedBox(
            width: 20,
          ),
          menuitem(Icons.fastfood, 'Burger'),
          SizedBox(
            width: 20,
          ),
          menuitem(Icons.local_pizza_rounded, 'Pizza'),
        ],
      ),
    );
  }

  Container menuitem(IconData icon, String text) {
    return Container(
      width: 60,
      height: 80,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 30,
            color: Colors.redAccent,
          ),
          SizedBox(
            height: 5,
          ),
          Text(text),
        ],
      ),
    );
  }
}

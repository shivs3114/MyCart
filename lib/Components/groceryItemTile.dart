import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Groceryitemtile extends StatelessWidget {
  final String name;
  final double price;
  final String imagePath;
  final Color color;
  void Function()? onPressed;
  Groceryitemtile(
      {required this.name,
      required this.price,
      required this.imagePath,
      super.key,
      required this.color,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: color.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            height: 80,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 10,
          ),
          Text(name),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '\$ ' + price.toString(),
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                IconButton(
                  icon: Icon(Icons.add_circle),
                  onPressed: onPressed,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          buildContainer(Icons.favorite, 'My Favorite', false),
          buildContainer(Icons.favorite, 'My Favorite', false),
          buildContainer(Icons.favorite, 'My Favorite', false),
          buildContainer(Icons.favorite, 'My Favorite', false),
          buildContainer(Icons.favorite, 'My Favorite', false),
        ],
      ),
    );
  }

  Widget buildContainer(IconData icon, String text, bool onTap) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: onTap ? Colors.white : Colors.grey[700]),
            SizedBox(width: 10),
            Text(
              text,
              style: TextStyle(color: onTap ? Colors.white : Colors.grey[700]),
            )
          ],
        ),
        height: 50,
        width: 150,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.grey, offset: Offset(3, 3), blurRadius: 6)
            ],
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(10))),
      ),
    );
  }
}

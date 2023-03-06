import 'package:flutter/material.dart';

class AddToCart extends StatelessWidget {
  final String imgText;
  final String imgPath;
  const AddToCart({super.key, required this.imgPath, required this.imgText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          splashRadius: 18,
          icon: Icon(Icons.arrow_back_ios, color: Colors.grey[800]),
        ),
        title: Text(
          imgText,
          style: const TextStyle(fontFamily: "Sf Bold"),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              splashRadius: 18,
              icon: Icon(
                Icons.share,
                size: 30,
                color: Colors.grey[800],
              ))
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 240,
            width: double.infinity,
            child: Image.asset(
              imgPath,
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopease/constants/images.dart';
import 'package:shopease/views/cart/add_to_cart.dart';

class WomenClothing extends StatelessWidget {
  const WomenClothing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // Mid Season Widget Component
              const SizedBox(height: 10),
              midSeasonWidget(),
              // Clothing Widget Component
              const SizedBox(height: 10),
              clothingWidget(),
              // Recommended
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

// Clothing Widget Component
  SizedBox clothingWidget() {
    return SizedBox(
      height: 650,
      width: double.infinity,
      child: ListView.builder(
        itemCount: womenCategoryListNames.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Get.to(() => AddToCart(
                    imgText: womenCategoryListNames[index],
                    imgPath: womenCategoryList[index],
                  ));
            },
            child: Container(
              height: 150,
              decoration: BoxDecoration(color: Colors.grey[300]),
              margin: const EdgeInsets.only(bottom: 20),
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 150,
                      child: Center(
                        child: Text(
                          womenCategoryListNames[index],
                          style: const TextStyle(
                              fontFamily: "Sf Heavy", fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 150,
                      child: Image.asset(
                        womenCategoryList[index],
                        fit: BoxFit.fill,
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// Mid Season Widget Component
Container midSeasonWidget() {
  return Container(
    width: double.infinity,
    height: 150,
    color: Colors.blue,
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text(
            "MIDSEASON SALE",
            style: TextStyle(
              fontFamily: "Sf Heavy",
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          Text(
            "Up to 50% off",
            style: TextStyle(
              fontFamily: "Sf Light",
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ],
      ),
    ),
  );
}

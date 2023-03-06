import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //  First Image
            latestDropWidget(),
            // Second Image
            silverGridWidget(),
            // Winter Clothes
            winterClothesComponent(),
            // last Scroll view
            lastScrollView(),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

// Widgets

// last Scroll view Component
  Column lastScrollView() {
    return Column(
      children: [
        const SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text("NEW IN",
                style: TextStyle(
                  color: Colors.grey[900],
                  fontWeight: FontWeight.bold,
                  fontFamily: "SF Heavy",
                  fontSize: 25,
                )),
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 260,
          width: double.infinity,
          child: ListView.builder(
              itemCount: 8,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 162,
                        height: 194,
                        child: Image.asset(
                          "assets/images/third.png",
                          height: 194,
                        ),
                      ),
                      Row(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text("547.00\$",
                                style: TextStyle(
                                  color: Colors.grey[900],
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "SF Heavy",
                                  fontSize: 14,
                                )),
                          ),
                          const SizedBox(width: 60),
                          Align(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                                splashRadius: 20,
                                onPressed: () {},
                                icon: const Icon(Icons.favorite_border,
                                    color: Colors.orange)),
                          )
                        ],
                      )
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }

// Silver Grid View Component
  SizedBox silverGridWidget() {
    return SizedBox(
      height: 720,
      width: double.infinity,
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 0,
          childAspectRatio: Get.width / Get.height / 0.8,
          mainAxisSpacing: 1.0,
        ),
        itemCount: 4,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(left: 6, right: 6, bottom: 20),
            child: Container(
              padding: const EdgeInsets.all(8),
              height: 120,
              // color: Colors.white,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                image: const DecorationImage(
                    image: AssetImage("assets/images/jacket.png"),
                    fit: BoxFit.cover),
              ),
              child: InkWell(
                onTap: () {
                  Get.snackbar("ShopEase", "Our Legacy is yours Legacy",
                      snackPosition: SnackPosition.BOTTOM);
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // Image(image: AssetImage("assets/images/first.png")),
                    Text("Our Legacy",
                        style: TextStyle(
                          color: Colors.orange[800],
                          fontFamily: "SF Heavy",
                          fontSize: 22,
                        )),
                    Text("Find your Jacket",
                        style: TextStyle(
                          color: Colors.orange[700],
                          fontFamily: "SF Heavy",
                          fontSize: 10,
                        )),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

// Latest Drop Component
  Container latestDropWidget() {
    return Container(
      height: 400,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/first.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Givenchy",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "SF Heavy",
                      fontSize: 50,
                    )),
                Text("The Latest Drop",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "SF Heavy",
                      fontSize: 20,
                    )),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Align(
            alignment: Alignment.center,
            child: Container(
                height: 40,
                width: 120,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(2)),
                child: MaterialButton(
                  onPressed: () {},
                  child: const Text(
                    "SHOP NOW",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "SF Heavy",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

// Winter Clothes Component
Column winterClothesComponent() {
  return Column(
    children: [
      const Text("Winter Sales",
          style: TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            fontFamily: "SF Heavy",
            fontSize: 35,
          )),

      const SizedBox(height: 20),

      Container(
        height: 440,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/second.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Midseason sale",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "SF light",
                    fontSize: 35,
                  )),
              Text("50% OFF",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "SF Heavy",
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  )),
            ],
          ),
        ),
      ),

      // Winter Clothes

      const SizedBox(height: 20),
      const Text("Winter IS  COMING",
          style: TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.bold,
            fontFamily: "SF Heavy",
            fontSize: 25,
          )),

      Text("Promo code: WIN19",
          style: TextStyle(
            color: Colors.grey[500],
            fontWeight: FontWeight.bold,
            fontFamily: "SF Heavy",
            fontSize: 18,
          )),

      const SizedBox(height: 20),

      SizedBox(
        height: 120,
        width: double.infinity,
        child: ListView.builder(
            itemCount: 8,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                width: 92,
                height: 92,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                        image: AssetImage("assets/images/img3.png"),
                        fit: BoxFit.cover)),
                margin: const EdgeInsets.only(left: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("The 9 Best Shoes to Wear to a Black Tie",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Sf Bold",
                            fontSize: 12))
                  ],
                ),
              );
            }),
      ),
    ],
  );
}

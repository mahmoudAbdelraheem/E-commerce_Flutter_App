import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    List<String> images = [
      "assets/images/img01.png",
      "assets/images/img02.png",
      "assets/images/img03.png",
      "assets/images/img04.png",
      "assets/images/img08.png",
    ];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: screenWidth / (screenHeight * 0.75),
            children: List.generate(images.length,
                (index) => defaultProduct(screenHeight, images[index])),
          ),
        ),
      ),
    );
  }

  Widget defaultProduct(double sHeight, String imagePath) => Container(
        decoration: BoxDecoration(
          color: Colors.blue[500],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          //alignment: AlignmentDirectional.bottomCenter,
          children: [
            //this row for rate and favorite icon
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black87,
                    ),
                    child: Padding(
                      // rate container padding
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        children: const [
                          Text(
                            "4.3",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(width: 3),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 12.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const CircleAvatar(
                    radius: 14,
                    backgroundColor: Colors.black87,
                    child: Icon(
                      Icons.favorite_border_sharp,
                      size: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  Image.asset(
                    imagePath,
                    height: sHeight * 0.25,
                  ),
                  Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Product Name",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "2599\$",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 8,),
                              Text(
                                "2999\$",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[500],
                                  decoration: TextDecoration.lineThrough
                                ),
                              ),
                              Spacer(),
                              CircleAvatar(
                                radius: 14,
                                backgroundColor: Colors.black87,
                                child: Icon(
                                  Icons.add_shopping_cart_sharp,
                                  size: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}

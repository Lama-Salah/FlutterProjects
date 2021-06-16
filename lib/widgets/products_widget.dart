import 'package:flutter/material.dart';

//ignore: must_be_immutable
class ProductsWidget extends StatelessWidget {
  String imagePath;
  String productsName;
  double price;
  ProductsWidget(this.imagePath, this.productsName, this.price);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(imagePath),
                          colorFilter: new ColorFilter.mode(
                              Colors.black.withOpacity(0.8), BlendMode.dstATop),
                        ),
                        borderRadius: BorderRadius.circular(5)),
                    height: 100,
                    width: 100,
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(productsName ,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xfffe5741))),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(price.toString(),
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                color: Color(0xff6d2453))),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                child: Column(
                 mainAxisAlignment:MainAxisAlignment.start,
                  children: [
                    Icon(Icons.star_rate_outlined),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
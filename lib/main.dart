import 'package:app4/widgets/categories_images_widget.dart';
import 'package:app4/products.dart';
import 'package:app4/slider.dart';
import 'package:app4/widgets/image_widget.dart';
import 'package:app4/widgets/products_widget.dart';
import 'package:flutter/material.dart';

//ignore: must_be_immutable
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyShoppingList(),
    );
  }
}

//ignore: must_be_immutable
class MyShoppingList extends StatelessWidget {
  List<SliderModel> imagesPaths = [
    SliderModel('assets/s1.jpg', 'YOU WORTH\n \t \t \t  \t IT'),
    SliderModel('assets/s2.jpg', 'All Day\nLong'),
    SliderModel('assets/s3.jpg', 'Enjoy\nPerfume'),
    SliderModel('assets/s4.png', 'New\nArrivals'),
    SliderModel('assets/s5.jpg', 'Gourges\nColors'),
    SliderModel('assets/s6.jpg', '10%\nDiscount'),
  ];

  List<SliderModel> categoriesPath = [
    SliderModel("assets/cat1.jpeg", "FASHION"),
    SliderModel("assets/cat2.jpg", "MAKEUP"),
    SliderModel("assets/cat3.jpg", "PERFUMES"),
  ];
  List<ProductsModel> newProductsPath = [
    ProductsModel("assets/pro1.jpg", "Avon Secret Perfume ", 200),
    ProductsModel("assets/pro2.jpg", "Revolution LipStick ", 80),
    ProductsModel("assets/pro3.jpg", "Pink Gliter Jacket  ", 120),
    ProductsModel("assets/pro4.jpg", "Blue Kids Dress     ", 90),
    ProductsModel("assets/pro5.jpg", "Blusher Cream       ", 95),
    ProductsModel("assets/pro6.jpg", "Si Perfume          ", 220),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 60,
          centerTitle: true,
          title: Text(
            "Lama's  Home Page",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 27),
          ),
          backgroundColor: Colors.pink),
      body: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.symmetric(vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: imagesPaths.map((e) {
                    return ImageWidget(e.imagePath, e.title);
                  }).toList(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "Categories",
                      style: TextStyle(
                          color: Color(0xff1bcedd),
                          fontSize: 30,
                          fontWeight: FontWeight.w900),
                      //decoration: TextDecoration.underline,decorationColor:Color(0xff0ff1ce)
                      // ,decorationStyle: TextDecorationStyle.wavy,decorationThickness: 1
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: categoriesPath.map((e) {
                  return CategoriesImageWidget(e.imagePath, e.title);
                }).toList(),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text("New Products",
                        style: TextStyle(
                            color: Color(0xff1bcedd),
                            fontSize: 30,
                            fontWeight: FontWeight.w900)),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: newProductsPath.map((e) {
                      return ProductsWidget(
                          e.imagePath, e.productsName, e.price);
                    }).toList(),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

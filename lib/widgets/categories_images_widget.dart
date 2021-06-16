import 'package:flutter/material.dart';

//ignore: must_be_immutable
class CategoriesImageWidget extends StatelessWidget {
  String title;
  String imagePath;
  CategoriesImageWidget(this.imagePath, this.title);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(4),
          decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(imagePath),
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.8), BlendMode.dstATop),
              ),
              borderRadius: BorderRadius.circular(5)), 
          height: 110,
          width: MediaQuery.of(context).size.width / 3.4,
          child: Positioned.fill(
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: Color(0xffffda1a)
              ),
            ),
          ),
        ),
        )
      ],
    );
  }
}
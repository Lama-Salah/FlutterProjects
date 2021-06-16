import 'package:flutter/material.dart';

//ignore: must_be_immutable
class ImageWidget extends StatelessWidget {
  String title;
  String imagePath;
  ImageWidget(this.imagePath, this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 20),
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            // repeat: ImageRepeat.repeat,
            image: AssetImage(imagePath),
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.7), BlendMode.dstATop),
          ),
          borderRadius: BorderRadius.circular(40)),
      height: 200,
      width: 300,
      child: Text(title,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900,color: Colors.pink)),
    );
  }
}

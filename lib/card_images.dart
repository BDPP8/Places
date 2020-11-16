import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CardImages extends StatelessWidget{
  String path;
  CardImages(this.path);
  @override
  Widget build(BuildContext context) {
    final cardImages = Padding(
      padding: EdgeInsets.only(
        top: 120,
        right: 15,
        bottom: 30
      ),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                path
            ),
            fit: BoxFit.cover,
          ),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(15)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15,
                offset: Offset(0,10)
            ),
          ],
        ),
      ),
    );
    return cardImages;
  }

}
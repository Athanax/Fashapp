import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: new ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
            Category(
              imageLocation: 'images/cats/tshirt.png',
              imageCaption: 'Shirt',
            ),

            Category(
              imageLocation: 'images/cats/dress.png',
              imageCaption: 'Dresses',
            ),

            Category(
              imageLocation: 'images/cats/formal.png',
              imageCaption: 'Formal',
            ),

            Category(
              imageLocation: 'images/cats/jeans.png',
              imageCaption: 'Pants',
            ),

            Category(
              imageLocation: 'images/cats/shoe.png',
              imageCaption: 'Shoes',
            ),

          
        ],
        )
    );
  }
}

class Category extends StatelessWidget {

  final String imageLocation;
  final String imageCaption;

  Category({
    this.imageCaption,
    this.imageLocation,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: 80.0,
          child: ListTile(
            title: Image.asset(imageLocation,
            width: 30.0,
            height: 30.0,),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(imageCaption),
            ),
          ),
        ),
      ),
    );
  }
}
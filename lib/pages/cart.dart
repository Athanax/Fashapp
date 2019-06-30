import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: new Text('Cart'),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.search),
            color: Colors.white,
            onPressed: (){},
          ),

        ],
      ),

      bottomNavigationBar: new Container(
        color: Colors.white,
        child: new Row(
          children: <Widget>[
            Expanded(child: new ListTile(
              title: new Text('Total:'),
              subtitle: new Text('\$230'),
            ),),

            Expanded(child: new MaterialButton(
              onPressed: (){},
              child: new Text('Check out', style: TextStyle(color: Colors.white),),
              color: Colors.red,
            ),)
          ],
        ),
      ),
    );
  }
}
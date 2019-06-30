import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:shopapp/components/horizontal_list.dart';
import 'package:shopapp/components/products.dart';
import 'package:shopapp/pages/cart.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MyApp(),
    )
  );
}

class MyApp extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<MyApp> {
  @override        
  Widget build(BuildContext context) {

    Widget imageCorousel = new Container(
      height: 170.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          // AssetImage('images/m2.jpg'),
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w4.jpeg'),
          AssetImage('images/w3.jpeg'),
          
        ],
        
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        autoplayDuration: Duration(milliseconds: 1000),

        //to specify the dot size
        // dotSize: 5.0,
        //to specity the dot color
        // dotColor: Colors.blue,
        
        //indicatorBgPadding changes the padding of the background
        indicatorBgPadding: 4.0,
      ),
    );
    return Scaffold(
      appBar: new AppBar(
        //elevation removes th shodow
        elevation: 0.0,
        title: new Text('Fashapp'),
        backgroundColor: Colors.red,
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search), color: Colors.white, onPressed: (){},),
          new IconButton(icon: Icon(Icons.shopping_cart), color: Colors.white, onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
          },),
        ],
        ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text('Athanas wambua'), 
              accountEmail: Text('athanaxwambua@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ),
              decoration: new BoxDecoration(color: Colors.pink),
              ),

              //body of the drawer
              InkWell(
                  onTap: (){},
                  child: ListTile(
                  title: new Text('Home page'),
                  leading: Icon(Icons.home, color: Colors.red,),
                ),
              ),

              InkWell(
                  onTap: (){},
                  child: ListTile(
                  title: new Text('My account'),
                  leading: Icon(Icons.person, color: Colors.red,),
                ),
              ),

              InkWell(
                  onTap: (){},
                  child: ListTile(
                  title: new Text('My orders'),
                  leading: Icon(Icons.shopping_basket, color: Colors.red,),
                ),
              ),

              InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
                  },
                  child: ListTile(
                  title: new Text('Shopping cart'),
                  leading: Icon(Icons.shopping_cart, color: Colors.red,),
                ),
              ),

              InkWell(
                  onTap: (){},
                  child: ListTile(
                  title: new Text('Favorites'),
                  leading: Icon(Icons.favorite, color: Colors.red,),
                ),
              ),

              Divider(),

              InkWell(
                  onTap: (){},
                  child: ListTile(
                  title: new Text('Settings'),
                  leading: Icon(Icons.settings),
                ),
              ),

              InkWell(
                  onTap: (){},
                  child: ListTile(
                  title: new Text('About'),
                  leading: Icon(Icons.help),
                ),
              ),
          ],

          

        ),
      ),

      body: new Column(
        children: <Widget>[
          //carousel begins here
          // imageCorousel,
          // carousel ends here
          new Padding(padding: EdgeInsets.all(10.0),
            child: new Text('Categories'),
          ),

          //Horizontal list of categories begins here
          HorizontalList(),
          //Horizontal list of categories ends here

          //Recent products starts here
          new Padding(padding: EdgeInsets.all(10.0),
          child: new Text('Recent products'),),

          //Grid view
         
             Flexible(child: Products()),
          
          //Recent products ends here
        ],

        ),
    );
  }
}
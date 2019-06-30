import 'package:flutter/material.dart';
import 'package:shopapp/main.dart';


class ProductDetails extends StatefulWidget {
  final productDetailsName;
  final productDetailsPicture;
  final productDetailsOldPrice;
  final productDetailsPrice;

  ProductDetails({
    this.productDetailsName,
    this.productDetailsOldPrice,
    this.productDetailsPicture,
    this.productDetailsPrice
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: InkWell(child: new Text("Fashapp"), onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>new MyApp()));},),
        elevation: 0.0,
        backgroundColor: Colors.red,
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search), color: Colors.white, onPressed: (){},),
          // new IconButton(icon: Icon(Icons.shopping_cart ), color: Colors.white, onPressed: (){},)
        ],
      ),
      //body
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                //widget.productDetailsPicture is used to use the variables of the parent class
                child: Image.asset(widget.productDetailsPicture),
                
              ),

              footer: Container(
                color: Colors.white54,
                child: new ListTile(
                  leading: new Text(widget.productDetailsName, 
                  style: TextStyle(fontWeight: FontWeight.w900),),
                  // style: TextStyle(fontWeight: FontWeight.w800),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("\$"+widget.productDetailsOldPrice,
                        style: TextStyle(color: Colors.grey, fontSize: 16.0, decoration: TextDecoration.lineThrough),),
                      ),

                      Expanded(
                        child: new Text("\$"+widget.productDetailsPrice, 
                        style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                      )
                    ],
                  ),
                ),
              ), 
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: new MaterialButton(
                  textColor: Colors.grey,
                  color: Colors.white,
                  onPressed: (){

                    showDialog(context: context,
                      builder: (context){
                        return new AlertDialog(
                          title: new Text('Size'),
                          content: new Text('choose size'),
                          actions: <Widget>[
                            new MaterialButton(
                              child: new Text('Close'),
                              onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                            )
                          ],
                        );
                      });
                  },
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text('Size'),
                      ),

                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),

              Expanded(
                child: new MaterialButton(
                  textColor: Colors.grey,
                  color: Colors.white,
                  onPressed: (){
                    showDialog(
                      context: context,
                      builder: (context){
                        return new AlertDialog(
                          title: new Text('Color'),
                          content: new Text('Choose Color'),
                          actions: <Widget>[
                            new MaterialButton(
                              child: new Text('Close'),
                              onPressed: (){Navigator.of(context).pop(context);
                              }),
                          ],
                        );
                      });
                  },
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text('Color'),
                      ),

                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),

              Expanded(
                child: new MaterialButton(
                  textColor: Colors.grey,
                  color: Colors.white,
                  onPressed: (){
                    showDialog(context: context,
                    builder: (context){
                      return new AlertDialog(
                        title: new Text('Quantity'),
                        content: new Text('Choose Quantity'),
                        actions: <Widget>[
                          new MaterialButton(
                            child: new Text('Close'),
                            onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                          )
                        ],
                      );
                    });
                  },
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text('Qty'),
                      ),

                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),

          Row(
            children: <Widget>[
              Expanded(
                child: new MaterialButton(
                  textColor: Colors.white,
                  color: Colors.red,
                  onPressed: (){},
                  elevation: 0.2,
                  child: new Text('Buy now'),
                ),
              ),

              new IconButton(icon: Icon(Icons.add_shopping_cart, color: Colors.red), onPressed: (){},),
              new IconButton(icon: Icon(Icons.favorite_border, color: Colors.red), onPressed: (){},),
            ],
          ),

          Divider(),

          new ListTile(
            title: new Text('Product details'),
            subtitle: new Text('This product can be acquired in both new ind second hand. This product can be acquired in both new ind second hand. This product can be acquired in both new ind second hand. This product can be acquired in both new ind second hand.'),
          ),

          new Row(
            children: <Widget>[
              new Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: new Text('Product name', style: TextStyle(color: Colors.grey)),),
              new Padding(padding: const EdgeInsets.all(5.0), 
              child: new Text(widget.productDetailsName),)
            ],
          ),

          new Row(
            children: <Widget>[
              new Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: new Text('Product brand', style: TextStyle(color: Colors.grey)),),
              new Padding(padding: const EdgeInsets.all(5.0),
              child: new Text('Brand X'),)
            ],
          ),

          new Row(
            children: <Widget>[
              new Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: new Text('Product condition', style: TextStyle(color: Colors.grey)),),
              new Padding(padding: const EdgeInsets.all(5.0),
              child: new Text('NEW', style: TextStyle(color: Colors.red),),)
              
            ],
          ),
        new ListTile(
          title: new Text('Similar products'),
          
        )

        ],
      ),
    );
  }
}
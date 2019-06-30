import 'package:flutter/material.dart';
import 'package:shopapp/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  ProductsState createState() => ProductsState();
}


class ProductsState extends State<Products> {

  Widget build(BuildContext context) {

    var productList = [
      {
        "name":"Blazers",
        "picture":"images/products/blazer1.jpeg",
        "old_price":"1200",
        "price":"980",
      },
      {
        "name":"Dress",
        "picture":"images/products/dress1.jpeg",
        "old_price":"900",
        "price":"870",
      },
      {
        "name":"Pants",
        "picture":"images/products/pants2.jpeg",
        "old_price":"450",
        "price":"700",
      },
      {
        "name":"Shoes",
        "picture":"images/products/shoe1.jpg",
        "old_price":"3000",
        "price":"2700",
      },
      {
        "name":"Hills",
        "picture":"images/products/hills1.jpeg",
        "old_price":"4000",
        "price":"3600",
      },
      {
        "name":"Skirt",
        "picture":"images/products/skt1.jpeg",
        "old_price":"200",
        "price":"180",
      },
    ];
    return GridView.builder(
      itemCount: productList.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2
      ),
      itemBuilder: (BuildContext context, int index){
        return SingleProduct(
          productName: productList[index]['name'],
          productImage: productList[index]['picture'],
          oldPrice: productList[index]['old_price'],
          price: productList[index]['price'],
        );
      },
      );
  }
}

class SingleProduct extends StatelessWidget {

  final productName;
  final productImage;
  final oldPrice;
  final price;


  //initialise in  a constructor to enable user defined products
  SingleProduct({
    this.productName,
    this.productImage,
    this.oldPrice,
    this.price
  }); 


  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: productName,
        child: Material(
          child: InkWell(
            onTap: ()=>Navigator.of(context).push(
              new MaterialPageRoute(
                //here we are passing the details of the product to the produyct details page
                builder: (context)=>new ProductDetails(
                  productDetailsName: productName,
                  productDetailsPicture: productImage,
                  productDetailsOldPrice: oldPrice,
                  productDetailsPrice: price,
                ))),
            child: GridTile(
              footer: Container(
                
                // height: 30.0,
                color: Colors.white70,
                child: ListTile(
                  
                  leading: Text(
                    productName, 
                    style:TextStyle(
                      fontWeight: FontWeight.bold) ,
                      ),
                  title: Text(
                    '\$'+price.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.w900),
                      ),
                  subtitle: Text(
                    oldPrice.toString(), 
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough)
                      ),
                ),
              ),
              child: Image.asset(productImage, 
              fit: BoxFit.cover,),
            ),
          ),
        ),
      ),
    );
  }
}
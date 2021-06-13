import 'package:flutter/material.dart';
import 'package:challenge_shoe/models/product_model.dart';

class DetailPage extends StatelessWidget {
  DetailPage({required this.product});

  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.black,
        actions: [
          Icon(
            Icons.favorite_border,
            color: Colors.black,
          ),
          SizedBox(width: 20.0)
          /*  Hero(
            tag: "Key_${product.id}",
            child: Image.asset(
              product.path,
              width: 60.0,
              height: 60.0,
            ),
          ), */
        ],
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.black,
            height: size.height * .60,
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 90.0, left: 50.0, right: 50.0),
              child: Hero(
                tag: "Key_${product.id}",
                child: Container(
                  width: 140.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        product.pathnetwork,
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: size.height * .40,
              decoration: BoxDecoration(
                color: Colors.white38,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

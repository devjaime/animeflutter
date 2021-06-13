import 'package:flutter/material.dart';
import 'package:challenge_shoe/pages/detail_page.dart';
import 'package:challenge_shoe/models/product_model.dart';

class HomePage extends StatefulWidget {
  HomePage();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ProductModel> addItems = [];

  @override
  Widget build(BuildContext context) {
    //Definir tamaño de animatedContainer
    final size = MediaQuery.of(context).size;
    double _height = addItems.length > 0 ? size.height * .78 : size.height;

    final _borderRadius = addItems.length > 0
        ? BorderRadius.only(
            bottomLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
          )
        : BorderRadius.circular(0.0);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        leading: Container(
          margin: EdgeInsets.only(left: 25.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              "https://i.pinimg.com/564x/56/33/69/5633692d41f7a59002a21747ff741e19.jpg",
            ),
          ),
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.black,
            size: 40.0,
          ),
          SizedBox(width: 25.0),
        ],
      ),
      body: Stack(
        children: [
          _cart(),
          _animatedBody(_height, _borderRadius),
        ],
      ),
    );
  }

  Widget _cart() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 150.0,
        color: Colors.black,
        padding: EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 35.0,
        ),
        child: Row(
          children: [
            Text(
              "Anime",
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            _cartItems(),
            CircleAvatar(
              backgroundColor: Colors.black45,
              child: Container(
                padding: EdgeInsets.all(7.0),
                decoration: BoxDecoration(
                  color: Colors.black54,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _cartItems() {
    int _milliseconds = addItems.length == 1 ? 1200 : 800;
    return Expanded(
      child: Container(
        height: 100.0,
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: addItems.length,
          reverse: true,
          itemBuilder: (context, index) {
            return TweenAnimationBuilder(
              tween: Tween(begin: 0.0, end: 1.0),
              duration: Duration(milliseconds: _milliseconds),
              builder: (context, value, widget) {
                double valueresponsive = double.parse(value.toString());
                return Opacity(
                  opacity: valueresponsive,
                  child: Transform.translate(
                    offset: Offset(0.0, 50 * (1 - valueresponsive)),
                    child: widget,
                  ),
                );
              },
              child: Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                    addItems[index].pathnetwork,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _animatedBody(double _height, _borderRadius) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 700),
      width: double.infinity,
      height: _height,
      padding: EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 0.5,
      ),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: _borderRadius,
      ),
      child: _gridProduct(),
      /* child: Column(
        children: [
          _options(),
          _gridProduct(),
        ],
      ), */
    );
  }

  Widget _options() {
    return GestureDetector(
      onTap: () => _settingModalBottomSheet(context),
      child: Row(
        children: [
          Card(
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              child: Row(
                children: [
                  Icon(Icons.filter_list_alt),
                  SizedBox(width: 5.0),
                  Text(
                    "Filter",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          child: new Wrap(
            children: <Widget>[
              new ListTile(
                  leading: new Icon(Icons.music_note),
                  title: new Text('Music'),
                  onTap: () => {}),
              new ListTile(
                leading: new Icon(Icons.videocam),
                title: new Text('Video'),
                onTap: () => {},
              ),
              new ListTile(
                  leading: new Icon(Icons.music_note),
                  title: new Text('Music'),
                  onTap: () => {}),
              new ListTile(
                leading: new Icon(Icons.videocam),
                title: new Text('Video'),
                onTap: () => {},
              ),
              new ListTile(
                  leading: new Icon(Icons.music_note),
                  title: new Text('Music'),
                  onTap: () => {}),
              new ListTile(
                leading: new Icon(Icons.videocam),
                title: new Text('Video'),
                onTap: () => {},
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _gridProduct() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15.0,
        mainAxisSpacing: 15.0,
        mainAxisExtent: 370.0,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
                    GestureDetector(
                      onTap: () {
                        addItems.add(products[index]);
                        setState(() {});
                        print(addItems.length);
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.black54,
                        child: Icon(
                          Icons.add,
                          color: Colors.pink,
                        ),
                      ),
                    )
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    print("Click!!!");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(
                          product: products[index],
                        ),
                      ),
                    );
                    /* return PageRouteBuilder(
                      pageBuilder: (_, animation, secondaryAnimation) {
                        return DetailPage(
                          product: products[index],
                        );
                      },
                      transitionsBuilder:
                          (_, animation, secondaryAnimation, child) {
                        return child;
                      },
                    ); */
                  },
                  child: Hero(
                    tag: "Key_${products[index].id}",
                    child: Container(
                      width: 140.0,
                      height: 200.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            products[index].pathnetwork,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  products[index].type,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  products[index].description,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5.0),
                Text(
                  "\$${products[index].price}",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.lightGreen,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:food_app_ui/food_detail.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    icon: Icon(Icons.arrow_back_ios_rounded),
                    color: Colors.black,
                    onPressed: () {}),
                Container(
                  width: 125.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          icon: Icon(Icons.filter_list),
                          color: Colors.black,
                          onPressed: () {}),
                      IconButton(
                          icon: Icon(Icons.menu_book),
                          color: Colors.black,
                          onPressed: () {}),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Row(
              children: [
                Text('Fast Food',
                    style: TextStyle(
                        fontFamily: 'Monstserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 25.0)),
                SizedBox(
                  width: 10.0,
                ),
                Text('Yummy!',
                    style: TextStyle(
                        // fontFamily: 'Monstserrat',
                        color: Colors.black,
                        fontSize: 18.0)),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          SingleChildScrollView(
            child: Container(
                // color: Colors.amber,
                height: MediaQuery.of(context).size.height - 170.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    // border: Border.all(
                    //     color: Colors.black,
                    //     width: 1,
                    //     style: BorderStyle.solid),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.elliptical(75.0, 75.0))),
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        child: Container(
                          // color: Colors.green,
                          height: MediaQuery.of(context).size.height - 260.0,
                          child: ListView(
                            children: [
                              _buildFoodItems(context, 'assets/burger.jpeg',
                                  'Burger', '\$30.00'),
                              _buildFoodItems(context, 'assets/cake.jpeg',
                                  'Cake', '\$50.00'),
                              _buildFoodItems(context, 'assets/noodles.jpeg',
                                  'Noodles', '\$40.00'),
                              _buildFoodItems(context, 'assets/idli.jpeg',
                                  'Idli Sambhar', '\$40.00'),
                              _buildFoodItems(context, 'assets/naan.jpeg',
                                  'Rajma Naan', '\$50.00'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            height: 60.0,
                            width: 70.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              border: Border.all(
                                  color: Colors.black,
                                  width: 1.0,
                                  style: BorderStyle.solid),
                            ),
                            child: Center(child: Icon(Icons.search))),
                        Container(
                          height: 60.0,
                          width: 70.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(
                                color: Colors.black,
                                width: 1.0,
                                style: BorderStyle.solid),
                          ),
                          child: Center(child: Icon(Icons.list)),
                        ),
                        Container(
                            height: 60.0,
                            width: 120.0,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(5.0),
                              border: Border.all(
                                  color: Colors.black,
                                  width: 1.0,
                                  style: BorderStyle.solid),
                            ),
                            child: Center(
                                child: Text(
                              'Cart',
                              style: TextStyle(color: Colors.white),
                            ))),
                      ],
                    )
                  ],
                )),
          )
        ],
      ),
    ));
  }
}

Widget _buildFoodItems(
    BuildContext context, String imgPath, String foodName, String price) {
  return Padding(
    padding: const EdgeInsets.only(top: 40.0, left: 20.0),
    child: InkWell(
      // hoverColor: Colors.amber,
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => FoodDetail(
                heroTag: imgPath, foodName: foodName, foodPrice: price)));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            // color: Colors.blue,
            child: Row(
              children: [
                Hero(
                    tag: imgPath,
                    child: CircleAvatar(
                      radius: 40.0,
                      backgroundImage: AssetImage(imgPath),
                    )),
                SizedBox(
                  width: 15.0,
                ),
                Column(
                  children: [
                    Text(foodName,
                        style: TextStyle(
                            fontFamily: 'Monstserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20.0)),
                    SizedBox(
                      height: 3.0,
                    ),
                    Text(price,
                        style: TextStyle(
                            fontFamily: 'Monstserrat',
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,
                            fontSize: 10.0))
                  ],
                )
              ],
            ),
          ),
          IconButton(icon: Icon(Icons.add), onPressed: () {})
        ],
      ),
    ),
  );
}

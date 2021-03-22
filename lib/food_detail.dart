import 'package:flutter/material.dart';

//comment added
class FoodDetail extends StatefulWidget {
  final heroTag;
  final foodName;
  final foodPrice;

  FoodDetail({this.heroTag, this.foodName, this.foodPrice});
  @override
  _FoodDetailState createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  String selectedCard = 'WEIGHT';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(
              Icons.arrow_back_ios_sharp,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          title: Text(
            'Food Details',
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Montserrat',
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.more_horiz_rounded),
              onPressed: () {},
              color: Colors.black,
            )
          ],
        ),
        body: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height - 90.0,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.transparent,
                ),
                Positioned(
                    top: 80,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(45),
                            topRight: Radius.circular(45)),
                      ),
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                    )),
                Positioned(
                    top: 20,
                    left: MediaQuery.of(context).size.width / 2 - 80,
                    child: Hero(
                        tag: widget.heroTag,
                        child: CircleAvatar(
                          radius: 80.0,
                          backgroundImage: AssetImage(widget.heroTag),
                        ))),
                Positioned(
                    top: 230,
                    left: 40.0,
                    right: 25.0,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.foodName,
                              style: TextStyle(
                                  fontFamily: 'Monstserrat',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 30.0)),
                          SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(widget.foodPrice,
                                  style: TextStyle(
                                      fontFamily: 'Monstserrat',
                                      fontWeight: FontWeight.normal,
                                      color: Colors.grey,
                                      fontSize: 20.0)),
                              // SizedBox(
                              //   width: 10.0,
                              // ),
                              Container(
                                height: 25.0,
                                color: Colors.grey,
                                width: 1.0,
                              ),
                              Container(
                                width: 130.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: Colors.teal,
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        height: 25.0,
                                        width: 25.0,
                                        decoration: BoxDecoration(
                                          // color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Center(
                                          child: Icon(
                                              Icons.remove_circle_outline_sharp,
                                              size: 20.0,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    Text('6',
                                        style: TextStyle(
                                            fontFamily: 'Monstserrat',
                                            fontWeight: FontWeight.normal,
                                            color: Colors.white,
                                            fontSize: 15.0)),
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        height: 25.0,
                                        width: 25.0,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Center(
                                          child: Icon(Icons.add,
                                              size: 20.0, color: Colors.teal),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Container(
                            height: 150.0,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                _buildInfoCard('WEIGHT', 'GM', '4'),
                                SizedBox(
                                  width: 10.0,
                                ),
                                _buildInfoCard('CALORIES', 'GM', '4'),
                                SizedBox(
                                  width: 10.0,
                                ),
                                _buildInfoCard('VITAMINS', 'GM', '300'),
                                SizedBox(
                                  width: 10.0,
                                ),
                                _buildInfoCard('FATS', 'GM', '4'),
                                SizedBox(
                                  width: 10.0,
                                ),
                                _buildInfoCard('SUGAR', 'GM', '4'),
                                SizedBox(
                                  width: 10.0,
                                ),
                                _buildInfoCard('PROTEINS', 'GM', '4'),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Container(
                                height: 70.0,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Text('\$50.00',
                                      style: TextStyle(
                                          fontFamily: 'Monstserrat',
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white,
                                          fontSize: 15.0)),
                                )),
                          )
                        ]))
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard(String cardTitle, String cardInfo, String units) {
    return InkWell(
      onTap: () => selected(cardTitle),
      child: AnimatedContainer(
        height: 100,
        width: 100,
        duration: Duration(milliseconds: 400),
        curve: Curves.easeIn,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: cardTitle == selectedCard ? Colors.teal : Colors.white24,
            border: Border.all(
                color: cardTitle == selectedCard
                    ? Colors.transparent
                    : Colors.black.withOpacity(0.3),
                style: BorderStyle.solid,
                width: 0.7)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 10.0),
              child: Text(cardTitle,
                  style: TextStyle(
                      fontFamily: 'Monstserrat',
                      fontWeight: FontWeight.normal,
                      color: cardTitle == selectedCard
                          ? Colors.white
                          : Colors.grey,
                      fontSize: 15.0)),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(cardInfo,
                      style: TextStyle(
                          fontFamily: 'Monstserrat',
                          fontWeight: FontWeight.normal,
                          color: cardTitle == selectedCard
                              ? Colors.white
                              : Colors.grey,
                          fontSize: 12.0)),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 4.0, left: 10.0),
                  child: Text(units,
                      style: TextStyle(
                          fontFamily: 'Monstserrat',
                          fontWeight: FontWeight.normal,
                          color: cardTitle == selectedCard
                              ? Colors.white
                              : Colors.black,
                          fontSize: 12.0)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  selected(cardTitle) {
    setState(() {
      selectedCard = cardTitle;
    });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// name: ItemList
// desc: this item will be the connection to an object. Zoomed out plant, with minimal interaction
// returns: object used for LISTS

// assets
final String cuteCactus = 'assets/cactus_1.svg';
final Widget svg = SvgPicture.asset(cuteCactus,
    semanticsLabel: 'Acme Logo', width: 200, height: 200);

class ItemList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.all(12),
          height: 92,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 90,
                      height: 90,
                      child: FloatingActionButton(
                          backgroundColor: Color.fromARGB(255, 242, 242, 242),
                          elevation: 20,
                          onPressed: () {
                            print('Thanks');
                          },
                          child: svg),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      textDirection: TextDirection.ltr,
                      children: <Widget>[
                        Text(
                          "Plant#1",
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.green,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                          textDirection: TextDirection.ltr,
                        ),
                        Text(
                          "Next alert in 1h 42min",
                          style: TextStyle(fontSize: 12, color: Colors.green),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ],
                )
              ]),
              Column(
                verticalDirection: VerticalDirection.up,
                children: <Widget>[
                  Row(children: <Widget>[
                    Icon(
                      Icons.whatshot, // this is where behavioural object addreseed
                    ),
                    Icon(
                      Icons.sentiment_satisfied
                    )
                  ],)
                ],
              ),
            ],
          ),
        ),
        onTap: () {
          print("tapped on container");
        },
      ),
    );
  }
}

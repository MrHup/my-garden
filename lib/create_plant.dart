import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreatePlant extends StatelessWidget {
  final int index;

  CreatePlant(this.index);

  static Widget button_test = SizedBox(
      height: 34,
      width: 34,
      child: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ));

  static String cuteCactus = 'assets/cactus_1.svg';
  static final Widget svg = SvgPicture.asset(cuteCactus,
      semanticsLabel: 'Acme Logo', width: 200, height: 200);

  Widget topPart = Stack(
    children: <Widget>[
      Container(
        // big circle with photo
        width: double.infinity,
        height: 200,
        color: Color.fromARGB(255, 237, 235, 225),
        child: Center(
            child: Stack(
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.white,
              child: svg,
              minRadius: 40,
              maxRadius: 80,
            ),
            Container(
              width: 50,
              height: 50,
              child: FloatingActionButton(
                onPressed: () {},
                shape: CircleBorder(
                    side: BorderSide(color: Colors.white, width: 4.0)),
                tooltip: 'Edit',
                child: Icon(Icons.edit),
              ),
            ),
          ],
        )),
      ),
      Container(
        width: double.infinity,
        height: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Column(
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                button_test,
                SizedBox(height: 4),
                button_test,
              ],
            ),
          ],
        ),
      ),
    ],
  );

  Widget middlePart = Padding(padding: EdgeInsets.symmetric(vertical: 25.0) ,child:Row(
    //crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Column(
        children: <Widget>[
          Container(
              width: 300,
              height: 42,
              child: Center(
                //Add padding around textfield

                child: new TextField(
                  decoration: new InputDecoration(
                      border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(10.0),
                        ),
                      ),
                      icon: Icon(Icons.person),
                      filled: true,
                      hintStyle: new TextStyle(color: Colors.grey[800]),
                      hintText: "Plant name",
                      fillColor: Colors.white70),
                ),
              ))
        ],
      )
    ],
  ));
  Widget bottomPart = Container();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[topPart, middlePart, bottomPart],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import './Elements/radio_button.dart';
import './Elements/item.dart';

final String cactus = 'assets/cactus.svg';
final String succulent = 'assets/succulent.svg';
final String orchid = 'assets/orchid.svg';
final double plant_size = 50;
final Widget svg_cactus = SvgPicture.asset(cactus,
    color: Colors.grey,
    semanticsLabel: 'Low watering',
    width: plant_size,
    height: plant_size);
final Widget svg_succulent = SvgPicture.asset(succulent,
    color: Colors.grey,
    semanticsLabel: 'Medium watering',
    width: plant_size,
    height: plant_size);
final Widget svg_orchid = SvgPicture.asset(orchid,
    color: Colors.green,
    semanticsLabel: 'High watering',
    width: plant_size,
    height: plant_size);

Widget coloana(Widget img, Text txt) {
  Widget result = InkWell(
      onTap: () {
        print("test");
      },
      child: Column(
        children: <Widget>[
          img,
          //button
          //text
          txt
        ],
      ));

  return result;
}

Widget select_plant = Padding(
  padding: EdgeInsets.symmetric(vertical: 25.0),
  child: Container(
    width: 300,
    //color: Colors.lightBlueAccent,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        coloana(svg_orchid, Text("Low")),
        coloana(svg_succulent, Text("Medium")),
        coloana(svg_cactus, Text("High")),
      ],
    ),
  ),
);

class CreatePlant extends StatelessWidget {
  final int index;

  CreatePlant(this.index);

  static Widget button_test = SizedBox(
      height: 34,
      width: 34,
      child: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add_a_photo),
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

  Widget middlePart = Padding(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      child: Row(
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
                  )),
              select_plant,
            ],
          )
        ],
      ));
  Widget bottomPart = Container(
      width: double.infinity,
      child: Center(
        child: FloatingActionButton.extended(
            onPressed: () {
              // Add your onPressed code here!
            },
            icon: Icon(Icons.add),
            backgroundColor: Colors.green,
            label: Text("Add")),
      ));

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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerWidget extends StatefulWidget {
  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Hotel Booking',style: GoogleFonts.poppins(
              fontSize: 20,
            ),),
            decoration: BoxDecoration(
              color: Colors.amberAccent,
            ),
          ),
          ListTile(
            title: Text('product',style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),),
            trailing:  new Icon(Icons.arrow_forward),
            onTap: () {
              // Update the state of the app.
              // ...
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => MasterData()),
              // );
            },
          ),
          ListTile(
            title: Text('sublist',style: GoogleFonts.exo2(
              textStyle: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),),
            trailing:  new Icon(Icons.arrow_forward),
            onTap: () {
              // Update the state of the app.
              // ...
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => SublistPage()),
              // );
            },
          ),
        ],
      ),
    );
  }
}

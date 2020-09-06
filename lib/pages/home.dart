import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_app/widgets/DrawerWidget.dart';
import 'package:hotel_app/widgets/HomeSearch.dart';
import 'package:responsive_grid/responsive_grid.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Theme.of(context).accentColor,
      //   leading: new IconButton(
      //     icon: new Icon(
      //       Icons.menu,
      //       color: Colors.white,
      //     ),
      //     onPressed: () => _scaffoldKey.currentState.openDrawer(),
      //   ),
      // ),
      drawer: DrawerWidget(),
      body: Container(
        color: Theme.of(context).accentColor,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Theme.of(context).accentColor,
              elevation: 0,
              leading: new IconButton(
                  icon: new Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  onPressed: () => _scaffoldKey.currentState.openDrawer(),
                ),
            ),


            SliverList(
              delegate: SliverChildListDelegate([
                Stack(
                  children: <Widget>[
                    HomeSearchWidget(),
                    Container(
                      margin: EdgeInsets.only(top: 390),
                      height: 500,
                      color: Theme.of(context).backgroundColor,
                    ),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(),
                        margin: EdgeInsets.only(top: 350),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Container( //TODO:: null picture set
                            width: 250,
                            height: 70.0,
                            color: Colors.white,
                            child: Center(
                                child: Text(
                                    "SEARCH",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      )
                                    ),
                                ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )

              ]),
            )
          ],
        ),
      ),
    );
  }
}

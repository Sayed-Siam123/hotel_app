import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_grid/responsive_grid.dart';

class HomeSearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 390,
      width: double.infinity,
      color: Theme.of(context).accentColor,
      child: ResponsiveGridCol(
        lg: 12,
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Where?",style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),),
              SizedBox(height: 3,),
              Container(
                height: 60,
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 0, left: 0, right: 0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(1, 1),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0,top: 3),
                  child: TextField(
                      autocorrect: true,
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      decoration: new InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          hintStyle: GoogleFonts.exo2(
                            textStyle: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          labelStyle: GoogleFonts.exo2(
                            textStyle: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          hintText: "Where to?",
                          suffixIcon: IconButton(
                            icon: Icon(Icons.gps_fixed,
                              color: Theme.of(context).buttonColor.withOpacity(0.3),
                            ),

                            onPressed: (){
                              print("hajshas");
                            },
                          )
                      )),
                ),
              ),
              SizedBox(height: 7,),
              Text("Check In - Check out",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width*.45,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 0, left: 0, right: 0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(1, 1),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0,top: 3),
                      child: TextField(
                          autocorrect: true,
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          decoration: new InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              hintStyle: GoogleFonts.exo2(
                                textStyle: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              labelStyle: GoogleFonts.exo2(
                                textStyle: TextStyle(
                                  fontSize: 20,
                                ),
                              ),

                              suffixIcon: IconButton(
                                icon: Icon(Icons.calendar_today,
                                  color: Theme.of(context).buttonColor.withOpacity(0.3),
                                ),
                                onPressed: (){
                                  print("hajshas");
                                },
                              )
                          )),
                    ),
                  ),

                  Divider(),
                  Container(
                    width: MediaQuery.of(context).size.width*.45,
                    height: 60,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 0, left: 0, right: 0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(1, 1),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0,top: 3),
                      child: TextField(
                          autocorrect: true,
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          decoration: new InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              hintStyle: GoogleFonts.exo2(
                                textStyle: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              labelStyle: GoogleFonts.exo2(
                                textStyle: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(Icons.calendar_today,
                                  color: Theme.of(context).buttonColor.withOpacity(0.3),
                                ),
                                onPressed: (){
                                  print("hajshas");
                                },
                              )
                          )),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 7,),
              Text("Book For",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 3,),
              Container(
                height: 90,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width*.30,
                          height: 60,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(top: 0, left: 0, right: 0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(1, 1),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0,top: 3),
                            child: TextField(
                                keyboardType: TextInputType.number,
                                autocorrect: true,
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                decoration: new InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    hintStyle: GoogleFonts.exo2(
                                      textStyle: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    labelStyle: GoogleFonts.exo2(
                                      textStyle: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    prefixIcon: IconButton(
                                      icon: Image.asset("assets/images/icon-adult.png",
                                        color: Theme.of(context).buttonColor.withOpacity(0.3),
                                      ),
                                      onPressed: (){
                                        print("hajshas");
                                      },
                                    )
                                )),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text("Adult",style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                          ),
                        ),),
                      ],
                    ),
                    Divider(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width*.30,
                          height: 60,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(top: 0, left: 0, right: 0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(topRight: Radius.circular(0),bottomRight: Radius.circular(0)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(1, 1),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0,top: 3),
                            child: TextField(
                                keyboardType: TextInputType.number,
                                autocorrect: true,
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                decoration: new InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    hintStyle: GoogleFonts.exo2(
                                      textStyle: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    labelStyle: GoogleFonts.exo2(
                                      textStyle: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    prefixIcon: IconButton(
                                      icon: Image.asset("assets/images/icon-child.png",
                                        color: Theme.of(context).buttonColor.withOpacity(0.3),
                                      ),
                                      onPressed: (){
                                        print("hajshas");
                                      },
                                    )
                                )),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text("Child",style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                          ),
                        ),),
                      ],
                    ),
                    Divider(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width*.30,
                          height: 60,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(top: 0, left: 0, right: 0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(1, 1),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0,top: 3),
                            child: TextField(
                                keyboardType: TextInputType.number,
                                autocorrect: true,
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                decoration: new InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,

                                  hintStyle: GoogleFonts.exo2(
                                    textStyle: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                  labelStyle: GoogleFonts.exo2(
                                    textStyle: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                  prefixIcon: IconButton(
                                    icon: Image.asset("assets/images/icon-room.png",
                                      color: Theme.of(context).buttonColor.withOpacity(0.3),
                                    ),
                                    onPressed: (){
                                      print("hajshas");
                                    },
                                  ),
                                )),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text("Rooms",style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                          ),
                        ),),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),

    );
  }
}

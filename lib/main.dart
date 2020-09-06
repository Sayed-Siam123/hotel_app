import 'package:flutter/material.dart';
import 'package:global_configuration/global_configuration.dart';
import 'package:hotel_app/ColorLibrary/HexColor.dart';
import 'package:hotel_app/pages/home.dart';
import 'package:splashscreen/splashscreen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  // AppLanguage appLanguage = AppLanguage();
  // await appLanguage.fetchLocale();
  await GlobalConfiguration().loadFromAsset("config");
  print("base_url: ${GlobalConfiguration().getString('base_url')}"); // need to use for api call
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  Color navy_blue = HexColor("#0E2130");
  Color red = HexColor("#FE2500");
  Color light_red = HexColor("#D81E08");

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.white,
        buttonColor: red,
        accentColor: navy_blue,
        focusColor: light_red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      backgroundColor: Colors.white,
      seconds: 3,
      title: Text("Hotel Booking"),
      navigateAfterSeconds: HomePage(),
      //title: new Text('IDENTIT',textScaleFactor: 2,),
      image: new Image.asset('assets/images/logo.jpeg'),
      loadingText: Text("Loading"),
      photoSize: 150.0,
      loaderColor: Colors.black54,
    );
  }
}

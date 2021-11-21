import 'package:coin_market/Crypto/currencyProvider.dart';
import 'package:coin_market/home.dart';
import 'package:coin_market/splash.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "/": (context) => Splash(),
      "/home": (context) => Home(),
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => CurrencyProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            "/splash": (context) => Splash(),
            "/": (context) => Home(),
          },
        ),
      );
}

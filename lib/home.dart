import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:coin_market/HomeWig.dart';
import 'package:coin_market/card.dart';

import 'constants.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeBox(),
                //   SizedBox(height: 30),
                Divider(
                  height: 30,
                  color: Colors.grey,
                ),
                Text(
                  "Trending coin",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
                ),
                SizedBox(height: 20),
                ListCoin(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ListCoin extends StatefulWidget {
  const ListCoin({Key key}) : super(key: key);

  @override
  _ListCoinState createState() => _ListCoinState();
}

class _ListCoinState extends State<ListCoin> {
  final price = <double>[1.0, 0, 0];
  final price_ch = <double>[1.0, 0, 0];
  Timer _timer;
  final String url =
      "https://api.nomics.com/v1/currencies/ticker?key=$api_key&ids=BTC,ETH,XRP&interval=1d,30d&convert=USD&per-page=100&page=1";

  void fetch() async {
    final response = await http.get(Uri.parse(url));
    final body = jsonDecode(response.body);
    int i = 0;

    for (var u in body) {
      price[i++] = double.parse(double.parse(u["price"]).toStringAsFixed(2));
      print(price[i - 1].toStringAsFixed(2));
    }
    print("object");
  }

  @override
  void initState() {
    super.initState();

    const twentyMillis = Duration(seconds: 10);
    _timer = Timer.periodic(twentyMillis, (timer) async {
      final response = await http.get(Uri.parse(url));
      final body = jsonDecode(response.body);
      int i = 0;

      for (var u in body) {
        price_ch[i] = double.parse(
            (double.parse(u["1d"]["price_change_pct"]) * 100)
                .toStringAsFixed(2));
        price[i++] = double.parse(double.parse(u["price"]).toStringAsFixed(2));
        print(price[i - 1].toStringAsFixed(2));
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListItem(
            price: price[0],
            name: "Bitcoin",
            sub: "BTC",
            prc: price_ch[0],
            logo: "assets/images/btc-logo.png",
          ),
          ListItem(
            price: price[1],
            name: "Etherium",
            sub: "ETH",
            prc: price_ch[1],
            logo: "assets/images/eth-logo.png",
          ),
          ListItem(
            price: price[2],
            name: "XRP",
            sub: "XRP",
            prc: price_ch[2],
            logo: "assets/images/xrp-logo.png",
          ),
        ],
      ),
    );
  }
}

import 'dart:convert';

import 'package:coin_market/Crypto/currency.dart';
import '../constants.dart';
import 'package:http/http.dart' as http;

class CryptoApi {
  static Future<List<Currency>> getCurrency() async {
    final String url =
        "https://api.nomics.com/v1/currencies/ticker?key=$api_key&ids=BTC,ETH,XRP&interval=1d,30d&convert=EUR&per-page=100&page=1";

    final response = await http.get(Uri.parse(url));
    final body = json.decode(response.body) as List;

    return body.map((e) => Currency.fromJson(e)).toList();
  }
}

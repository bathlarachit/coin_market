import 'package:coin_market/Crypto/cryptoAPI.dart';
import 'package:coin_market/Crypto/currency.dart';
import 'package:coin_market/Crypto/currency_source.dart';
import 'package:flutter/cupertino.dart';

class CurrencyProvider extends ChangeNotifier {
  CurrencyDataSource currencyDataSource;
  List<Currency> currencies = [];

  CurrencyProvider() {
    loadCurrency();
  }

  Future loadCurrency() async {
    final currencies = await CryptoApi.getCurrency();
    this.currencies = currencies;
    notifyListeners();
  }
}

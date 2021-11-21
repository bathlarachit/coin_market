import 'package:coin_market/Crypto/currency.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import 'currency.dart';

enum CurrencyColumn { id, rank, name, price, oneHChange, oneDchange, marketCap }

class CurrencyDataSource extends DataGridSource {
  List<DataGridRow> _currencies;

  @override
  List<DataGridRow> get rows => _currencies;
  CurrencyDataSource({List<Currency> Currencies}) {
    buildDataGrid(Currencies);
  }

  void buildDataGrid(List<Currency> Currencies) =>
      _currencies = Currencies.map<DataGridRow>(
        (e) => DataGridRow(
          cells: CurrencyColumn.values
              .map(
                (column) => DataGridCell<Currency>(
                  columnName: column.toString(),
                  value: e,
                ),
              )
              .toList(),
        ),
      ).toList();

  @override
  DataGridRowAdapter buildRow(DataGridRow row) => DataGridRowAdapter(
          cells: row.getCells().map((e) {
        return Text("Hello");
      }).toList());
}

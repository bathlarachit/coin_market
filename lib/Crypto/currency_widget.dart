import 'package:coin_market/Crypto/currency_source.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:provider/provider.dart';

class CurrencyWidget extends StatelessWidget {
  const CurrencyWidget({Key key}) : super(key: key);
// final provider = Provider.of<CurrencyProvider>
  // final currencyDataSource = provider
  @override
  Widget build(BuildContext context) {
    // return SfDataGrid(source: currencyDataSource, columns: buildGridColumn());
  }

  List<GridColumn> buildGridColumn() => <GridColumn>[
        GridColumn(
          columnName: CurrencyColumn.id.toString(),
          label: buildLabel('ID'),
        ),
        GridColumn(
          columnName: CurrencyColumn.rank.toString(),
          maximumWidth: 80,
          label: buildLabel('Rank'),
        ),
        GridColumn(
          columnName: CurrencyColumn.id.toString(),
          label: buildLabel('ID'),
        ),
        GridColumn(
          columnName: CurrencyColumn.name.toString(),
          label: buildLabel('Name'),
        ),
        GridColumn(
          columnName: CurrencyColumn.price.toString(),
          label: buildLabel('Price'),
        ),
        GridColumn(
          columnName: CurrencyColumn.oneHChange.toString(),
          label: buildLabel('Last 1H'),
        ),
        GridColumn(
          columnName: CurrencyColumn.oneDchange.toString(),
          label: buildLabel('Last 1D'),
        ),
      ];

  Widget buildLabel(String s) => Text(s);
}

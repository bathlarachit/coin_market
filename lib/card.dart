import 'dart:developer';

import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    Key key,
    @required this.price,
    @required this.name,
    @required this.sub,
    @required this.prc,
    @required this.logo,
  }) : super(key: key);

  final double price, prc;
  final String name, sub, logo;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          child: Image.asset(logo),
        ),
        title: Text(name),
        subtitle: Text(sub),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "\$ $price",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            Text(
              (prc >= 0) ? "+$prc%" : "-$prc%",
              style: TextStyle(color: (prc >= 0) ? Colors.green : Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}

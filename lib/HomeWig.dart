import 'package:flutter/material.dart';
import 'constants.dart';

class HomeBox extends StatelessWidget {
  const HomeBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: blue,
        borderRadius: BorderRadius.circular(12),
      ),
      height: 160,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 24.0, top: 10, bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome Again",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
            Text(
              "Make your first investment today",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w800,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              height: 45,
              width: 140,
              child: Center(
                child: Text("Invest Today",
                    style: TextStyle(
                        color: blue,
                        fontSize: 18,
                        fontWeight: FontWeight.w600)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

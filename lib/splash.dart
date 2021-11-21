import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image(
            image: AssetImage("assets/images/logo-3.png"),
            height: 200,
            width: 200,
          ),
          Text(
            "CRYPTON",
            style: TextStyle(
              fontFamily: "Permanent",
              fontSize: 68,
              fontWeight: FontWeight.w700,
            ),
          ),
          ElevatedButton(
            onPressed: () => {Navigator.pushNamed(context, '/home')},
            style: ElevatedButton.styleFrom(
              primary: Colors.deepPurple,
              fixedSize: const Size(220, 50),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
            ),
            child: Text("Get Started"),
          ),
          Text(
            "India's most trusted app",
            style: TextStyle(fontSize: 20),
          ),
        ],
      )),
    );
  }
}

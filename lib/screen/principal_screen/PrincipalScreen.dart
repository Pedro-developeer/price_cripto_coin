import 'package:flutter/material.dart';
import 'package:price_cripto_coin/screen/components/cripto_card.dart';
import 'package:price_cripto_coin/screen/principal_screen/Body.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        body: const Body()
      ),
    );
  }
}


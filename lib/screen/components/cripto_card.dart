import 'package:flutter/material.dart';

class CriptoCard extends StatelessWidget {
  CriptoCard({
    required this.name,
    required this.symbol,
    required this.imageUrl,
    required this.price,
    required this.change,
    required this.changePorcentage,
  });

  String name;
  String symbol;
  String imageUrl;
  double price;
  double change;
  double changePorcentage;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        // ignore: prefer_const_literals_to_create_immutables
        boxShadow: [
          const BoxShadow(
              color: Colors.grey, offset: Offset(3, 1), blurRadius: 5),
          const BoxShadow(
              color: Colors.white, offset: Offset(-3, -1), blurRadius: 5),
        ],
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Image.network(
              imageUrl,
              height: 60,
              width: 60,
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    color: Colors.black87,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  symbol,
                  style: const TextStyle(
                    color: Colors.black87,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  price.toDouble().toString(),
                  style: const TextStyle(
                    color: Colors.black87,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  change.toDouble().toString(),
                  style:  TextStyle(
                    color: change.toDouble() < 0
                        ? Colors.redAccent
                        : Colors.greenAccent,
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  changePorcentage.toDouble() < 0
                  ?changePorcentage.toDouble().toString() + '%'
                  :'+'+changePorcentage.toDouble().toString() + '%',
                  style:  TextStyle(
                    color: changePorcentage.toDouble() < 0
                        ? Colors.redAccent
                        : Colors.greenAccent,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

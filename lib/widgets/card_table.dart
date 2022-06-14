import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SingleCard(
            label: 'General',
            color1: Colors.white60,
            color2: Colors.blueAccent,
            icon: Icons.generating_tokens,
          ),
          _SingleCard(
            label: 'Transport',
            color1: Colors.white70,
            color2: Colors.purple,
            icon: Icons.bus_alert_outlined,
          ),
        ]),
        TableRow(children: [
          _SingleCard(
              label: 'Pharmacy',
              color1: Colors.white60,
              color2: Colors.blueAccent,
              icon: Icons.local_hospital_outlined),
          _SingleCard(
            label: 'Candies',
            color1: Colors.white70,
            color2: Colors.red,
            icon: Icons.local_hospital,
          ),
        ]),
        TableRow(children: [
          _SingleCard(label: 'Chocolate', color1: Colors.white60, color2: Colors.brown, icon: Icons.child_care),
          _SingleCard(
            label: 'Sugar',
            color1: Colors.white70,
            color2: Colors.teal,
            icon: Icons.food_bank,
          ),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  const _SingleCard({Key? key, required this.label, required this.icon, required this.color1, required this.color2})
      : super(key: key);
  final String label;
  final Color color1;
  final Color color2;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    final boxDecoration2 = BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(colors: [
          color1,
          color2,
        ], begin: Alignment.bottomLeft, end: Alignment.topRight));

    return _CardBackground(
        widget: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          decoration: boxDecoration2,
          child: CircleAvatar(
              backgroundColor: Colors.transparent, radius: 30, child: Icon(icon, size: 35, color: Colors.white))),
      const SizedBox(height: 30),
      Text(label, style: const TextStyle(fontSize: 18, color: Colors.blueAccent, fontWeight: FontWeight.bold))
    ]));
  }
}

class _CardBackground extends StatelessWidget {
  const _CardBackground({Key? key, required this.widget}) : super(key: key);
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    final boxDecoration =
        BoxDecoration(color: const Color.fromRGBO(62, 66, 107, 0.7), borderRadius: BorderRadius.circular(10));

    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: boxDecoration,
            child: widget,
          ),
        ),
      ),
    );
  }
}
/*
 decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          gradient: const LinearGradient(
            colors: [Color.fromRGBO(236, 98, 188, 1), Color.fromRGBO(251, 142, 172, 1)],
          ),
        ),
      ),

*/

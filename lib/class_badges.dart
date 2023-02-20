import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';

class ClassBadges extends StatefulWidget {
  const ClassBadges({Key? key}) : super(key: key);

  @override
  State<ClassBadges> createState() => _ClassBadgesState();
}

class _ClassBadgesState extends State<ClassBadges> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tugas Widget Badges')),
      body: Column(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 200),
              decoration: const ShapeDecoration(
                color: Colors.purple,
                shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.elliptical(80, 80)),
                ),
              ),
              // Membuat widget badges 1
              child: const badges.Badge(
                badgeContent: Text(
                  'BADGES 1',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                // Mengubah warna bagdes
                badgeStyle: badges.BadgeStyle(
                  badgeColor: Colors.purple,
                  padding: EdgeInsets.all(10),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.all(10),
              decoration: const ShapeDecoration(
                color: Colors.purple,
                shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.elliptical(80, 80)),
                ),
              ),
              child: const badges.Badge(
                // Membuat widget badges 2
                badgeContent: Text(
                  'BADGES 2',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                badgeStyle: badges.BadgeStyle(
                  badgeColor: Colors.purple,
                  padding: EdgeInsets.all(2),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

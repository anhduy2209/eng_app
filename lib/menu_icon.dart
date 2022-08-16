import 'dart:ui';

import 'package:flutter/material.dart';

class MenuIcon extends StatelessWidget {
  final String menuIcon;
  final String menuTitle;

  MenuIcon({required this.menuIcon, required this.menuTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Image.asset(
                menuIcon,
                width: 65,
                height: 56,
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                menuTitle,
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'WorkSans',
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

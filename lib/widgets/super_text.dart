// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project/providers/providers.dart';

class SuperText extends StatelessWidget {
  const SuperText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heroeInfo = Provider.of<HeroesInfo>(context);
    final villanoInfo = Provider.of<VillanosInfo>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Text(
          heroeInfo.heroe,
          style: TextStyle(fontSize: 30.0, color: heroeInfo.colorBase),
        ),
        Text(
          villanoInfo.villano,
          style: TextStyle(fontSize: 15.0),
        ),
      ],
    );
  }
}

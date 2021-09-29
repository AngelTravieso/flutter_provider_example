// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project/providers/providers.dart';

class FloatingActionButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heroesInfo = Provider.of<HeroesInfo>(context);
    final villanosInfo = Provider.of<VillanosInfo>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
            child: const Icon(Icons.shield_outlined),
            backgroundColor: Colors.blue,
            onPressed: () {
              heroesInfo.heroe = 'Captain America';
              villanosInfo.villano = 'Red Skull';
            }),
        SizedBox(
          height: 10.0,
        ),
        FloatingActionButton(
            child: const Icon(Icons.how_to_reg_outlined),
            backgroundColor: Colors.red,
            onPressed: () {
              heroesInfo.heroe = 'IronMan';
              villanosInfo.villano = 'The Mandarin';
            })
      ],
    );
  }
}

// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project/providers/heroesInfo.dart';
import 'package:provider_project/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  static String routeName = 'homePage';

  @override
  Widget build(BuildContext context) {
    final heroeInfo = Provider.of<HeroesInfo>(context);
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(heroeInfo.heroe),
        ),
        body: Center(
          child: SuperText(),
        ),
        floatingActionButton: FloatingActionButtons());
  }
}

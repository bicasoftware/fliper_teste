import 'package:fliper_teste/consts.dart';
import 'package:fliper_teste/fliper_home/bloc/bloc_fliper_home.dart';
import 'package:fliper_teste/fliper_home/fliper_home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        primaryColor: Colors.purpleAccent,
        accentColor: FliperColors.accentColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        canvasColor: FliperColors.canvasColor,
        dividerColor: FliperColors.dividerColor,
        fontFamily: "Proximanova"
      ),
      home: Provider<BlocFliperHome>(
        create: (_) => BlocFliperHome(),
        child: FliperHome(),
      ),
    );
  }
}

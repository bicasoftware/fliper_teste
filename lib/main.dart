import 'package:fliper_teste/consts.dart';
import 'package:fliper_teste/fliper_home/bloc/bloc_fliper_home.dart';
import 'package:fliper_teste/fliper_home/fliper_home.dart';
import 'package:fliper_teste/fliper_home/services/service_wealth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'fliper_home/models/wealth_data.dart';

//TODO - Carregar dados do server
//Passar para o BLoC
//Carregar nos Widgets

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await ServiceWealthSummary.fetchWealthData().then((WealthData data) {
    runApp(MyApp(wealthData: data));
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key key, this.wealthData}) : super(key: key);

  final WealthData wealthData;

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
        fontFamily: "Proximanova",
      ),
      home: Provider<BlocFliperHome>(
        create: (_) => BlocFliperHome(wealthData: wealthData),
        child: FliperHome(),
      ),
    );
  }
}

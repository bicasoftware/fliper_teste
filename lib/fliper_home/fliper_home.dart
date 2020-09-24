import 'package:fliper_teste/consts.dart';
import 'package:fliper_teste/fliper_home/widgets/fliper_card.dart';
import 'package:flutter/material.dart';

class FliperHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: FliperCard(
            title: Consts.seuResumo,
            onOptionsTap: () {},
            onSeeMoreTap: () {},
          ),
        ),
      ),
    );
  }
}

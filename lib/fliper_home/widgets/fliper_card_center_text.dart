import 'package:fliper_teste/consts.dart';
import 'package:flutter/material.dart';

class FliperCardCenterText extends StatelessWidget {
  const FliperCardCenterText({
    @required this.label,
    @required this.value,
    Key key,
  }) : super(key: key);

  final String value;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 16,
            color: FliperColors.labelTextColor,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          value,
          textAlign: TextAlign.justify,
          style: const TextStyle(
            decoration: TextDecoration.none,
            color: FliperColors.accentColor,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}

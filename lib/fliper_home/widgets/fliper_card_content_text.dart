import 'package:fliper_teste/consts.dart';
import 'package:flutter/material.dart';
import 'package:fliper_teste/utils/context_helper.dart';

class FliperCardContentText extends StatelessWidget {
  const FliperCardContentText({
    @required this.label,
    @required this.value,
    Key key,
  }) : super(key: key);

  final String value;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            label,
            style: const TextStyle(
              color: FliperColors.labelTextColor,
              fontSize: 16,
            ),
          ),
          const Spacer(),
          Text(
            value,
            style: TextStyle(
              fontSize: 18,
              color: context.accentColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

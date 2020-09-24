import 'package:fliper_teste/utils/context_helper.dart';
import 'package:flutter/material.dart';

class FliperCardBottom extends StatelessWidget {
  const FliperCardBottom({
    @required this.label,
    @required this.onTap,
    Key key,
  }) : super(key: key);
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 8),
        const Divider(thickness: 1),
        Row(
          children: [
            const Spacer(),
            OutlineButton(
              borderSide: BorderSide(
                width: 1.5,
                color: context.accentColor,
              ),
              child: Text(
                label.toUpperCase(),
                style: context.textTheme.button.copyWith(
                  color: context.accentColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: onTap,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
              ),
            )
          ],
        )
      ],
    );
  }
}

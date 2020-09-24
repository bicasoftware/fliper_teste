import 'package:fliper_teste/consts.dart';
import 'package:flutter/material.dart';
import 'package:fliper_teste/utils/context_helper.dart';

class FliperCardHeader extends StatelessWidget {
  const FliperCardHeader({
    @required this.headerText,
    @required this.onTap,
    Key key,
  }) : super(key: key);

  final String headerText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          headerText,
          style: TextStyle(
            fontSize: 25,
            color: context.accentColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        //O Ideial seria usar um IconButton, porém, ele tem um padding padrão, o que quebra o design
        //Talvez seja possível fazer um classe filha que extenda de IconButton e que sobrescreva esse padding,
        //porém, por questão de prazo, preferi compor um widget mais simples.
        InkWell(
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 0),
            child: Icon(
              Icons.more_vert,
              color: FliperColors.dividerColor,
            ),
          ),
          onTap: onTap,
        ),
      ],
    );
  }
}

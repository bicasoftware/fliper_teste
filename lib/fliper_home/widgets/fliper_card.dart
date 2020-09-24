import 'package:fliper_teste/consts.dart';
import 'package:fliper_teste/fliper_home/widgets/fliper_card_bottom.dart';
import 'package:fliper_teste/fliper_home/widgets/fliper_card_center_text.dart';
import 'package:fliper_teste/fliper_home/widgets/fliper_card_content_text.dart';
import 'package:fliper_teste/fliper_home/widgets/fliper_card_header.dart';
import 'package:flutter/material.dart';
import 'package:fliper_teste/utils/context_helper.dart';
import 'package:intl/intl.dart';

class FliperCard extends StatelessWidget {
  const FliperCard({
    @required this.title,
    @required this.onOptionsTap,
    @required this.onSeeMoreTap,
    Key key,
  }) : super(key: key);

  final VoidCallback onOptionsTap, onSeeMoreTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: EdgeInsetsDirectional.zero,
      shadowColor: context.theme.dividerColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ///Header contendo Título e optionButton
            FliperCardHeader(
              headerText: title,
              onTap: onOptionsTap,
            ),

            //Container com text para title e valor, na vertical
            FliperCardCenterText(
              label: Consts.valorInvestido,
              value: NumberFormat.currency().format(12300.0),
            ),
            
            ///Container com text para label e valor, na horizontal
            FliperCardContentText(
              label: Consts.rentabilidade,
              value: '${120.toStringAsFixed(3)} %',
            ),
            FliperCardContentText(
              label: Consts.cdi,
              value: '${120.toStringAsFixed(3)} %',
            ),
            FliperCardContentText(
              label: Consts.ganho,
              value: NumberFormat.currency().format(123.0),
            ),
            FliperCardBottom(
              onTap: onSeeMoreTap,
              label: Consts.verMais,
            )
          ],
        ),
      ),
    );
  }
}

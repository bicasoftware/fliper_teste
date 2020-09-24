import 'package:fliper_teste/consts.dart';
import 'package:fliper_teste/fliper_home/bloc/bloc_fliper_home.dart';
import 'package:fliper_teste/fliper_home/models/wealth_summary.dart';
import 'package:fliper_teste/fliper_home/models/wealth_summary_ext.dart';
import 'package:fliper_teste/fliper_home/widgets/fliper_card_bottom.dart';
import 'package:fliper_teste/fliper_home/widgets/fliper_card_center_text.dart';
import 'package:fliper_teste/fliper_home/widgets/fliper_card_content_text.dart';
import 'package:fliper_teste/fliper_home/widgets/fliper_card_header.dart';
import 'package:fliper_teste/utils/context_helper.dart';
import 'package:flutter/material.dart';
import 'package:lib_observer/lib_observer.dart';
import 'package:provider/provider.dart';

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
    final b = Provider.of<BlocFliperHome>(context);

    return StreamObserver<WealthSummary>(
      stream: b.outWealthData,
      onSuccess: (_, WealthSummary summary) => Card(
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
              const SizedBox(height: 16),
              //Container com text para title e valor, na vertical
              FliperCardCenterText(
                label: Consts.valorInvestido,
                value: summary.totalFormatted,
              ),

              ///Container com text para label e valor, na horizontal
              FliperCardContentText(
                label: Consts.rentabilidade,
                value: summary.profitabilityFormatted,
              ),
              FliperCardContentText(
                label: Consts.cdi,
                value: summary.cdiFormatted,
              ),
              FliperCardContentText(
                label: Consts.ganho,
                value: summary.gainFormatted,
              ),
              FliperCardBottom(
                onTap: onSeeMoreTap,
                label: Consts.verMais,
              )
            ],
          ),
        ),
      ),
    );
  }
}

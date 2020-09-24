import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

extension ContextHelper on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  Color get primaryColor => theme.primaryColor;
  Color get accentColor => theme.accentColor;
}

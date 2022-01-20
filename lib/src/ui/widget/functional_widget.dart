import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'functional_widget.g.dart';

@swidget
Widget foo(BuildContext context, int value) {
  return Text('$value');
}
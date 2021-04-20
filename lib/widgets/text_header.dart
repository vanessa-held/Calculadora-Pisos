import 'package:flutter/material.dart';
import 'package:calculadora_pisos/core/constantes.dart';

class TextHeader extends StatelessWidget {
  final String label;

  const TextHeader({
    Key key,
    this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kSmallSpace),
      color: Theme.of(context).accentColor.withOpacity(kOpacityHeader),
      child: Text(
        label,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
    
class SEOText extends StatelessWidget {

  // ignore: use_super_parameters
  const SEOText( this.text, { Key? key, this.style, }) : super(key: key);
  final String text ;
  final TextStyle? style ;
  
  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
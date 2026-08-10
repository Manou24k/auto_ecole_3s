import 'package:flutter/material.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_style.dart';
    
class SEOText extends StatelessWidget {

  // ignore: use_super_parameters
  const SEOText( this.text, { Key? key, this.style, this.textAlign,this.textRendererStyle}) : super(key: key);
  final String text ;
  final TextStyle? style ;
  final TextAlign? textAlign;
  final TextRendererStyle? textRendererStyle;
  
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: style,
     );
  }
}
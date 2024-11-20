
import 'package:demo/style/dimensions.dart';
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;
  ResponsiveLayout({required this.mobileBody,required this.desktopBody});
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,contraints){
      if(contraints.maxWidth<mobileWidth){
        return mobileBody;
      }
      else{
        return desktopBody;
      }

    }
    );
}

}
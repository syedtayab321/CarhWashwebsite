import 'package:fusionxcar/consts/contant.dart';
import 'package:flutter/material.dart';

Widget detailcard({width, String? count, String? title}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      count!.text
          .fontWeight(FontWeight.w500)
          .size(16)
          .color(darkFontGrey)
          .make(),
      5.heightBox,
      title!.text.color(darkFontGrey).make(),
    ],
  )
      .box
      .white
      .rounded
      .width(width)
      .height(80)
      .padding(
        EdgeInsets.all(4),
      )
      .make();
}

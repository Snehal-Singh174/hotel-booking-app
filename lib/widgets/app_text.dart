import 'package:flutter/material.dart';
import 'package:hotel_booking_app/gen/colors.gen.dart';
import 'package:hotel_booking_app/gen/fonts.gen.dart';

class AppText extends Text {
  final Color? color;
  final FontWeight? fontWeight;
  final double? height;
  final double? letterSpacing;
  final double fontSize;

  AppText.small(String data,
      {Key? key,
      this.color = ColorName.primaryColor,
      this.fontWeight = FontWeight.normal,
      TextAlign? textAlign = TextAlign.left,
      int? maxLine,
      TextOverflow? textOverflow,
      this.height,
      this.letterSpacing,
      this.fontSize = 12})
      : super(
          data,
          key: key,
          textAlign: textAlign,
          maxLines: maxLine,
          style: TextStyle(
              fontFamily: FontFamily.workSans,
              fontSize: fontSize,
              color: color,
              height: height,
              fontWeight: fontWeight,
              overflow: textOverflow,
              letterSpacing: letterSpacing),
        );

  AppText.medium(String data,
      {Key? key,
      this.color = ColorName.primaryColor,
      this.fontWeight = FontWeight.w600,
      TextAlign? textAlign = TextAlign.left,
      int? maxLine,
      TextOverflow? textOverflow,
      this.height,
      this.letterSpacing,
      this.fontSize = 14,
      TextDecoration textDecoration = TextDecoration.none})
      : super(
          data,
          key: key,
          textAlign: textAlign,
          maxLines: maxLine,
          style: TextStyle(
              fontFamily: FontFamily.workSans,
              fontSize: fontSize,
              color: color,
              height: height,
              fontWeight: fontWeight,
              overflow: textOverflow,
              decoration: textDecoration,
              letterSpacing: letterSpacing),
        );

  AppText.large(String data,
      {Key? key,
      this.color = ColorName.primaryColor,
      this.fontWeight = FontWeight.bold,
      TextAlign? textAlign = TextAlign.center,
      int? maxLine,
      TextOverflow? textOverflow,
      this.height,
      this.letterSpacing,
      this.fontSize = 24})
      : super(
          data,
          key: key,
          textAlign: textAlign,
          maxLines: maxLine,
          style: TextStyle(
              fontFamily: FontFamily.workSans,
              fontSize: fontSize,
              color: color,
              height: height,
              fontWeight: fontWeight,
              overflow: textOverflow,
              letterSpacing: letterSpacing),
        );
}

class AppTextSpan extends TextSpan {
  final Color? color;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final double? height;
  final double? letterSpacing;
  final double fontSize;

  AppTextSpan.large(String data,
      {this.color = ColorName.primaryColor,
      this.fontWeight = FontWeight.bold,
      this.textAlign,
      int? maxLine,
      TextOverflow? textOverflow,
      this.height,
      this.letterSpacing,
      this.fontSize = 24})
      : super(
          text: data,
          style: TextStyle(
              fontFamily: FontFamily.workSans,
              fontSize: fontSize,
              color: color,
              height: height,
              fontWeight: fontWeight,
              overflow: textOverflow,
              letterSpacing: letterSpacing),
        );

  AppTextSpan.medium(String data,
      {this.color = ColorName.primaryColor,
      this.fontWeight = FontWeight.bold,
      this.textAlign,
      int? maxLine,
      TextOverflow? textOverflow,
      this.height,
      this.letterSpacing,
      this.fontSize = 14})
      : super(
          text: data,
          style: TextStyle(
              fontFamily: FontFamily.workSans,
              fontSize: fontSize,
              color: color,
              height: height,
              fontWeight: fontWeight,
              overflow: textOverflow,
              letterSpacing: letterSpacing),
        );

  AppTextSpan.small(String data,
      {this.color = ColorName.primaryColor,
      this.fontWeight = FontWeight.bold,
      this.textAlign,
      int? maxLine,
      TextOverflow? textOverflow,
      this.height,
      this.letterSpacing,
      this.fontSize = 12})
      : super(
          text: data,
          style: TextStyle(
              fontFamily: FontFamily.workSans,
              fontSize: fontSize,
              color: color,
              height: height,
              fontWeight: fontWeight,
              overflow: textOverflow,
              letterSpacing: letterSpacing),
        );
}

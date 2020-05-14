import 'package:flutter/material.dart';

class ResultModel {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  ResultModel(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});
}

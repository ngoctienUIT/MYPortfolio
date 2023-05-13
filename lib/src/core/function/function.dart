import 'package:flutter/material.dart';

bool checkSizeScreen(BuildContext context) =>
    MediaQuery.of(context).size.width > MediaQuery.of(context).size.height;

import 'package:flutter/material.dart';

extension ScrollControllerSupernova on ScrollController {
  bool get isScrolled => hasClients && offset > 0;
}

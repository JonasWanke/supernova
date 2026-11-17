import 'package:material_ui/material_ui.dart';

extension ScrollControllerSupernova on ScrollController {
  bool get isScrolled => hasClients && offset > 0;
}

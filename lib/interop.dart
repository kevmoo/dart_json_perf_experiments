@JS()
library interop;

import 'package:js/js.dart';

import 'data.dart';

@JS("JSON.parse")
external List<JSData> parseJson(String input);

@JS()
@anonymous
abstract class JSData implements Data {
  external bool get strong;
}

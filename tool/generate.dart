import 'dart:convert';
import 'dart:math';

import 'package:djs/data.dart';

main() {
  var rnd = new Random(0);

  var items = new List<Data>.generate(
      1000,
      (i) =>
          new Data('kevin', 'moore', rnd.nextInt(1000), rnd.nextInt(2) == 0));

  print(const JsonEncoder.withIndent(' ').convert(items));
}

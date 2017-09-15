// Copyright (c) 2017, Kevin Moore. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:convert';
import 'dart:html';
import 'dart:math' as math;

import 'package:djs/data.dart';
import 'package:djs/stats.dart';

import 'package:djs/interop.dart';

main() async {
  var request = await HttpRequest.getString('data.json');
  var count = 100;

  var dartStats = _getStats(count, request, _dartNative);
  var jsStats = _getStats(count, request, parseJson);

  dartStats = _getStats(count, request, _dartNative);
  jsStats = _getStats(count, request, parseJson);

  var stats = ['*** Dart ***', dartStats, '*** JS Stats ***', jsStats];

  querySelector('#output').text = stats.join('\n');
}

String _getStats(int count, String input, Iterable<Data> decode(String input)) {
  var stats = new Stats(new Iterable<int>.generate(
      count, (i) => _dartJson(input, decode).inMicroseconds));

  var items = {
    'median': stats.median,
    'mean': stats.mean,
    'max': stats.max,
    'min': stats.min
  };

  var longest = items.keys.fold<int>(0, (v, k) => math.max(v, k.length));

  var output = new StringBuffer();
  items.forEach((k, v) {
    output.writeln(
        '${k.padLeft(longest)} - ${new Duration(microseconds: v.toInt())}');
  });

  return output.toString();
}

Iterable<Data> _dartNative(String input) =>
    (JSON.decode(input) as List<Map<String, dynamic>>)
        .map((j) => new Data.fromJson(j));

Duration _dartJson(String input, Iterable<Data> decode(String input)) {
  var stopwatch = new Stopwatch()..start();

  var count = 0;

  if (false) {
    for (var e in decode(input)) {
      if (e.strong) count++;
    }
  } else {
    count = decode(input).where((e) => e.strong).length;
  }

  if (count != 512) {}

  return stopwatch.elapsed;
}

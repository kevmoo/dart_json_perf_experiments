Discussions

* https://github.com/matanlurey/dart_serialize_proposal/issues/8
* https://github.com/dart-lang/sdk/issues/30242

Data

* Median: Dart is 2.455x slower
* Mean: Dart is 2.329x slower

```
*** Dart ***
median - 0:00:00.001375
  mean - 0:00:00.001456
   max - 0:00:00.002525
   min - 0:00:00.001325

*** JS Stats ***
median - 0:00:00.000560
  mean - 0:00:00.000625
   max - 0:00:00.001165
   min - 0:00:00.000540
```



## Using DDC w/ `pub serve`

```
*** Dart ***
median - 0:00:00.002550
  mean - 0:00:00.002684
   max - 0:00:00.004500
   min - 0:00:00.002460

*** JS Stats ***
median - 0:00:00.000545
  mean - 0:00:00.000579
   max - 0:00:00.001495
   min - 0:00:00.000540
```

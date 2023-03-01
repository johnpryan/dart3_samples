void main() {
  var (a, b) = makeRecord();
  print('a = $a b = $b');

  var record = (100, "foo");
  print(record.$1);
  print(record.$2);
  print(record.runtimeType);

  var recordWithNamedFields = (foo: 'Hello', bar: Object());
  print(recordWithNamedFields.foo);
  print(recordWithNamedFields.bar);

  var equalRecord1 = (a: 'foo', b: 'bar');
  var equalRecord2 = (a: 'foo', b: 'bar');
  print('equalRecord1 == equalRecord2 is ${equalRecord1 == equalRecord2}');

  // Records are const.
  var constRecord = (1, 2);
  // constRecord.$0 = 2;

  // Use underscore wildcard pattern to discard:
  var (_, foo) = makeRecord();

  var needsUpdate = true;
  var x = 0;
  var y = 0;
  if (needsUpdate) {
  (x, y) = makeRecord();
  }
  print('x = $x y = $y');
}

(int, int) makeRecord() {
  return (1, 2);
}
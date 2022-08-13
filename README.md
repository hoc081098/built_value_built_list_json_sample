# built_value_built_list_json_sample
 
`built_value` sample: parse `JSON` to `BuiltList` dynamically.

## Author: [Petrus Nguyễn Thái Học](https://github.com/hoc081098)

[![Dart](https://github.com/hoc081098/test_built_value/actions/workflows/dart.yml/badge.svg)](https://github.com/hoc081098/test_built_value/actions/workflows/dart.yml)
[![Style](https://img.shields.io/badge/style-lints-40c4ff.svg)](https://pub.dev/packages/lints)

## Use

### Step 1. Define your `Built` classes in `_types`
```dart
/// Register your [Built] classes here.
const List<Type> _types = [
  MyModel,
  MyModelTwo,
];
```

### Step 2. Define your `BuilderFactory`s in `_factories`.

```dart
/// Register your [_BuilderFactory]s here.
final List<_BuilderFactory> _factories = [
  _BuilderFactory(
    FullType(BuiltMap, [
      FullType(String),
      FullType(int),
    ]),
    () => MapBuilder<String, int>(),
  ),
];
```

### Step 3. Use `deserializeBuiltList` and `deserializeBuiltListNullable` to parse `JSON` to `BuiltList`. 

```dart
abstract class MyModel implements Built<MyModel, MyModelBuilder> {
  BuiltList<int?> get items;

  MyModel._();

  factory MyModel([void Function(MyModelBuilder) updates]) = _$MyModel;

  [...]
}
```

#### `BuiltList<T> deserializeBuiltList<T extends Object>(Object json)`

```dart
final json = [
  {
    'items': <int?>[1, 2, null, 3, 3]
  },
  {
    'items': <int?>[1, 2, null, 3, 2]
  },
  {
    'items': <int?>[1, 2, null, 3]
  },
];

BuiltList<MyModel> items = deserializeBuiltList<MyModel>(json);
```

#### `BuiltList<T?> deserializeBuiltListNullable<T extends Object>(Object json)`.
```dart
final json = [
  {
    'items': <int?>[1, 2, null, 3, 3]
  },
  {
    'items': <int?>[1, 2, null, 3, 2]
  },
  null,
  {
    'items': <int?>[1, 2, null, 3]
  },
];

BuiltList<MyModel?> items = deserializeBuiltListNullable<MyModel>(json);
```

## Run demo

```shell
dart pub get
dart run ./bin/main.dart
```

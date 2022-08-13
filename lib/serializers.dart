import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_collection/built_collection.dart';

import 'my_model.dart';
import 'my_model_two.dart';

part 'serializers.g.dart';

/// Register your [Built] classes here.
const List<Type> _types = [
  MyModel,
  MyModelTwo,
];

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

class _BuilderFactory {
  final FullType type;
  final dynamic Function() function;

  _BuilderFactory(this.type, this.function);
}

extension on SerializersBuilder {
  void addTypes() {
    for (final t in _types) {
      addBuilderFactory(
        FullType(BuiltList, [FullType(t)]),
        () => ListBuilder<dynamic>(),
      );
      addBuilderFactory(
        FullType(BuiltList, [FullType.nullable(t)]),
        () => ListBuilder<dynamic>(),
      );
    }
    for (final f in _factories) {
      addBuilderFactory(f.type, f.function);
    }
  }
}

///
/// PUBLIC API
///

@SerializersFor(_types)
final Serializers serializers = (_$serializers.toBuilder()
      ..addPlugin(StandardJsonPlugin())
      ..addTypes())
    .build();

BuiltList<T> deserializeBuiltList<T extends Object>(Object json) {
  try {
    final listOfDynamic = serializers.deserialize(
      json,
      specifiedType: FullType(BuiltList, [FullType(T)]),
    )! as BuiltList<dynamic>;
    return listOfDynamic.cast<T>().toBuiltList();
  } on DeserializationError catch (_) {
    print(
        '>>>>> Try to add specified type, eg: deserializeBuiltList<MyModel>(json)');
    rethrow;
  }
}

BuiltList<T?> deserializeBuiltListNullable<T extends Object>(Object json) {
  try {
    final listOfDynamic = serializers.deserialize(
      json,
      specifiedType: FullType(BuiltList, [FullType.nullable(T)]),
    )! as BuiltList<dynamic>;
    return listOfDynamic.cast<T?>().toBuiltList();
  } on DeserializationError catch (_) {
    print(
        '>>>>> Try to add specified type, eg: deserializeBuiltListNullable<MyModel>(json)');
    rethrow;
  }
}

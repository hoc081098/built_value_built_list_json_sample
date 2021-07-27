import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_collection/built_collection.dart';

import 'my_model.dart';
import 'my_model_two.dart';

part 'serializers.g.dart';

const List<Type> types = [
  MyModel,
  MyModelTwo,
];

final List<BuilderFactory> factories = [
  BuilderFactory(
    FullType(BuiltMap, [
      FullType(String),
      FullType(int),
    ]),
    () => MapBuilder<String, int>(),
  ),
];

@SerializersFor(types)
final Serializers serializers = (_$serializers.toBuilder()
      ..addPlugin(StandardJsonPlugin())
      ..addTypes())
    .build();

class BuilderFactory {
  final FullType type;
  final dynamic Function() function;

  BuilderFactory(this.type, this.function);
}

extension on SerializersBuilder {
  void addTypes() {
    for (final t in types) {
      addBuilderFactory(
        FullType(BuiltList, [FullType(t)]),
        () => ListBuilder<dynamic>(),
      );
      addBuilderFactory(
        FullType(BuiltList, [FullType.nullable(t)]),
        () => ListBuilder<dynamic>(),
      );
    }
    for (final f in factories) {
      addBuilderFactory(f.type, f.function);
    }
  }
}

BuiltList<T> deserializeBuiltList<T extends Object>(Object json) {
  try {
    final listOfDynamic = serializers.deserialize(
      json,
      specifiedType: FullType(BuiltList, [FullType(T)]),
    )! as BuiltList<dynamic>;
    return listOfDynamic.cast<T>().toBuiltList();
  } on DeserializationError catch (_) {
    print(
        '>>>>> Try to adding specified type, eg: deserializeBuiltListNullable<MyModel>(json)');
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
        '>>>>> Try to adding specified type, eg: deserializeBuiltList<MyModel>(json)');
    rethrow;
  }
}

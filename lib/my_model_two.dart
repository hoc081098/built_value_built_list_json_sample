import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

import 'serializers.dart';

part 'my_model_two.g.dart';

abstract class MyModelTwo implements Built<MyModelTwo, MyModelTwoBuilder> {
  BuiltMap<String, BuiltMap<String, int>> get map;

  MyModelTwo._();

  factory MyModelTwo([void Function(MyModelTwoBuilder) updates]) = _$MyModelTwo;

  static Serializer<MyModelTwo> get serializer => _$myModelTwoSerializer;

  factory MyModelTwo.fromJson(Map<String, Object?> json) =>
      serializers.deserializeWith<MyModelTwo>(serializer, json)!;

  Map<String, Object?> toJson() =>
      serializers.serializeWith(serializer, this)! as Map<String, Object?>;
}

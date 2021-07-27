import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

import 'serializers.dart';

part 'my_model.g.dart';

abstract class MyModel implements Built<MyModel, MyModelBuilder> {
  BuiltList<int?> get items;

  MyModel._();

  factory MyModel([void Function(MyModelBuilder) updates]) = _$MyModel;

  static Serializer<MyModel> get serializer => _$myModelSerializer;

  factory MyModel.fromJson(Map<String, Object?> json) =>
      serializers.deserializeWith<MyModel>(serializer, json)!;

  Map<String, Object?> toJson() =>
      serializers.serializeWith(serializer, this)! as Map<String, Object?>;
}

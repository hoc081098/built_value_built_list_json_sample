// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MyModel> _$myModelSerializer = new _$MyModelSerializer();

class _$MyModelSerializer implements StructuredSerializer<MyModel> {
  @override
  final Iterable<Type> types = const [MyModel, _$MyModel];
  @override
  final String wireName = 'MyModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, MyModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'items',
      serializers.serialize(object.items,
          specifiedType:
              const FullType(BuiltList, const [const FullType.nullable(int)])),
    ];

    return result;
  }

  @override
  MyModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MyModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'items':
          result.items.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(int)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$MyModel extends MyModel {
  @override
  final BuiltList<int?> items;

  factory _$MyModel([void Function(MyModelBuilder)? updates]) =>
      (new MyModelBuilder()..update(updates)).build();

  _$MyModel._({required this.items}) : super._() {
    BuiltValueNullFieldError.checkNotNull(items, 'MyModel', 'items');
  }

  @override
  MyModel rebuild(void Function(MyModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MyModelBuilder toBuilder() => new MyModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MyModel && items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc(0, items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MyModel')..add('items', items))
        .toString();
  }
}

class MyModelBuilder implements Builder<MyModel, MyModelBuilder> {
  _$MyModel? _$v;

  ListBuilder<int?>? _items;
  ListBuilder<int?> get items => _$this._items ??= new ListBuilder<int?>();
  set items(ListBuilder<int?>? items) => _$this._items = items;

  MyModelBuilder();

  MyModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MyModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MyModel;
  }

  @override
  void update(void Function(MyModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MyModel build() {
    _$MyModel _$result;
    try {
      _$result = _$v ?? new _$MyModel._(items: items.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MyModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

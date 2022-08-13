// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_model_two.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MyModelTwo> _$myModelTwoSerializer = new _$MyModelTwoSerializer();

class _$MyModelTwoSerializer implements StructuredSerializer<MyModelTwo> {
  @override
  final Iterable<Type> types = const [MyModelTwo, _$MyModelTwo];
  @override
  final String wireName = 'MyModelTwo';

  @override
  Iterable<Object?> serialize(Serializers serializers, MyModelTwo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'map',
      serializers.serialize(object.map,
          specifiedType: const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(
                BuiltMap, const [const FullType(String), const FullType(int)])
          ])),
    ];

    return result;
  }

  @override
  MyModelTwo deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MyModelTwoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'map':
          result.map.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(BuiltMap,
                    const [const FullType(String), const FullType(int)])
              ]))!);
          break;
      }
    }

    return result.build();
  }
}

class _$MyModelTwo extends MyModelTwo {
  @override
  final BuiltMap<String, BuiltMap<String, int>> map;

  factory _$MyModelTwo([void Function(MyModelTwoBuilder)? updates]) =>
      (new MyModelTwoBuilder()..update(updates))._build();

  _$MyModelTwo._({required this.map}) : super._() {
    BuiltValueNullFieldError.checkNotNull(map, r'MyModelTwo', 'map');
  }

  @override
  MyModelTwo rebuild(void Function(MyModelTwoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MyModelTwoBuilder toBuilder() => new MyModelTwoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MyModelTwo && map == other.map;
  }

  @override
  int get hashCode {
    return $jf($jc(0, map.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MyModelTwo')..add('map', map))
        .toString();
  }
}

class MyModelTwoBuilder implements Builder<MyModelTwo, MyModelTwoBuilder> {
  _$MyModelTwo? _$v;

  MapBuilder<String, BuiltMap<String, int>>? _map;
  MapBuilder<String, BuiltMap<String, int>> get map =>
      _$this._map ??= new MapBuilder<String, BuiltMap<String, int>>();
  set map(MapBuilder<String, BuiltMap<String, int>>? map) => _$this._map = map;

  MyModelTwoBuilder();

  MyModelTwoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _map = $v.map.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MyModelTwo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MyModelTwo;
  }

  @override
  void update(void Function(MyModelTwoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MyModelTwo build() => _build();

  _$MyModelTwo _build() {
    _$MyModelTwo _$result;
    try {
      _$result = _$v ?? new _$MyModelTwo._(map: map.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'map';
        map.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MyModelTwo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

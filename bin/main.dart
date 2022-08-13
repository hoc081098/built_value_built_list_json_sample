import 'package:test_built_value/my_model.dart';
import 'package:test_built_value/my_model_two.dart';
import 'package:test_built_value/serializers.dart';

void demo1() {
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

  print('---1---');
  final items = deserializeBuiltList<MyModel>(json);
  print(items);
  print(items.runtimeType);
  print('--------\n');
}

void demo2() {
  final json = [
    {
      'map': {
        '1': {
          '1': 1,
          '2': 2,
        },
        '2': {
          '1': 1,
          '2': 2,
        },
      }
    },
    {
      'map': {
        '1': {
          '1': 1,
          '2': 2,
        },
        '2': {
          '1': 1,
          '2': 2,
        },
      }
    }
  ];

  print('---2---');
  final items = deserializeBuiltList<MyModelTwo>(json);
  print(items);
  print(items.runtimeType);
  print('-------\n');
}

void demo3() {
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

  print('---3---');
  final items = deserializeBuiltListNullable<MyModel>(json);
  print(items);
  print(items.runtimeType);
  print('-------\n');
}

void demo4() {
  final json = [
    {
      'map': {
        '1': {
          '1': 1,
          '2': 2,
        },
        '2': {
          '1': 1,
          '2': 2,
        },
      }
    },
    null,
    {
      'map': {
        '1': {
          '1': 1,
          '2': 2,
        },
        '2': {
          '1': 1,
          '2': 2,
        },
      }
    }
  ];

  print('---4---');
  final items = deserializeBuiltListNullable<MyModelTwo>(json);
  print(items);
  print(items.runtimeType);
  print('-------\n');
}

void main(List<String> arguments) {
  demo1();

  demo2();

  demo3();

  demo4();
}

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:string_to_material_icon/string_to_material_icon.dart';

void main() {
  test('it returns IconData when string is provided', () {
    IconData? testIcon = StringToMaterialIcon.getIconDataFromString('headphones');
    expect(testIcon, Icons.headphones);
  });

  test('it returns IconData when uppercase string is provided', () {
    IconData? testIcon = StringToMaterialIcon.getIconDataFromString('headphones'.toUpperCase());
    expect(testIcon, Icons.headphones);
  });

  test('it throws error when string is not an icon', () {
    expect(() => StringToMaterialIcon.getIconDataFromString('headphones22'), throwsA(isA<IconNotFound>()));
  });
}

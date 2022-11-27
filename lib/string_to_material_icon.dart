library string_to_material_icon;

import 'package:flutter/material.dart';
import './icon_list.dart' show iconDataMap;

class IconNotFound extends Error implements UnsupportedError {
  final String? message;
  IconNotFound([this.message]);

  @override
  String toString() {
    var message = this.message;
    return "IconNotFound: $message";
  }
}

class StringToMaterialIcon {
  static IconData? getIconDataFromString(String iconName) {
    iconName = iconName.toLowerCase();

    if(!iconDataMap.containsKey(iconName)) {
      throw IconNotFound("Icon $iconName not found");
    }

    return iconDataMap[iconName];
  }
}

# String To Material Icon

This package convert a string to an IconData to show its icon representation.

## Instalation
Include `string_to_material_icon` in your `pubspec.yaml` file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  string_to_material_icon: version
```

## Usage

To use this package, just import it into your file and enjoy it.

```dart
import 'package:string_to_material_icon/string_to_material_icon.dart';

...

IconData? headphoneIcon = StringToMaterialIcon.getIconDataFromString('headphones');
Icon(headphoneIcon, size: 32)
...
```

The method `getIconDataFromString` can return an IconData - throwing an exception when the icon is not found.
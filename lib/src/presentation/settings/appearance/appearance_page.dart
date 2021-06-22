import 'dart:ui';

import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class AppearancePage extends StatefulWidget {
  const AppearancePage({Key key}) : super(key: key);

  @override
  _AppearancePageState createState() => _AppearancePageState();
}

class _AppearancePageState extends State<AppearancePage> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Box<dynamic>>(
      valueListenable: Hive.box<dynamic>('settings').listenable(),
      builder: (BuildContext context, Box<dynamic> settingsBox, Widget widget) {
        final bool darkMode = settingsBox.get('darkMode', defaultValue: false);
        final Color primaryColor = settingsBox.get('primaryColor', defaultValue: Colors.deepPurple);
        final Color accentColor = settingsBox.get('accentColor', defaultValue: Colors.deepPurpleAccent);
        final Color textButtonColor = settingsBox.get('textButtonColor', defaultValue: Colors.deepPurpleAccent);
        final Color elevatedButtonColor = settingsBox.get('elevatedButtonColor', defaultValue: Colors.deepPurple);
        final Color floatingButtonColor = settingsBox.get('floatingButtonColor', defaultValue: Colors.deepPurple);
        final Color toggleableActiveColor =
            settingsBox.get('toggleableActiveColor', defaultValue: Colors.deepPurpleAccent[100]);

        return Scaffold(
          appBar: AppBar(
            title: const Text('Appearance'),
          ),
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: const Text('Dark Theme'),
                    trailing: Switch(
                      value: darkMode,
                      onChanged: (bool value) {
                        settingsBox.put('darkMode', !darkMode);
                      },
                    ),
                  ),
                  const Divider(thickness: 1),
                  ListTile(
                    title: const Text('Primary Color'),
                    trailing: ColorIndicator(
                      hasBorder: true,
                      borderRadius: 22,
                      color: primaryColor,
                      onSelect: () async {
                        final Color colorBeforeDialog = primaryColor;
                        if (!(await _showColorPickerDialog(primaryColor, 'primaryColor', settingsBox))) {
                          setState(() {
                            settingsBox.put('primaryColor', colorBeforeDialog);
                          });
                        }
                      },
                    ),
                  ),
                  const Divider(thickness: 1),
                  ListTile(
                    title: const Text('Accent Color'),
                    trailing: ColorIndicator(
                      hasBorder: true,
                      borderRadius: 22,
                      color: accentColor,
                      onSelect: () async {
                        final Color colorBeforeDialog = accentColor;
                        if (!(await _showColorPickerDialog(accentColor, 'accentColor', settingsBox))) {
                          setState(() {
                            settingsBox.put('accentColor', colorBeforeDialog);
                          });
                        }
                      },
                    ),
                  ),
                  const Divider(thickness: 1),
                  ListTile(
                    title: const Text('Toggle Color'),
                    trailing: ColorIndicator(
                      hasBorder: true,
                      borderRadius: 22,
                      color: toggleableActiveColor,
                      onSelect: () async {
                        final Color colorBeforeDialog = toggleableActiveColor;
                        if (!(await _showColorPickerDialog(
                            toggleableActiveColor, 'toggleableActiveColor', settingsBox))) {
                          setState(() {
                            settingsBox.put('toggleableActiveColor', colorBeforeDialog);
                          });
                        }
                      },
                    ),
                  ),
                  const Divider(thickness: 1),
                  ListTile(
                    title: const Text('Text Button Color'),
                    trailing: ColorIndicator(
                      hasBorder: true,
                      borderRadius: 22,
                      color: textButtonColor,
                      onSelect: () async {
                        final Color colorBeforeDialog = textButtonColor;
                        if (!(await _showColorPickerDialog(textButtonColor, 'textButtonColor', settingsBox))) {
                          setState(() {
                            settingsBox.put('textButtonColor', colorBeforeDialog);
                          });
                        }
                      },
                    ),
                  ),
                  const Divider(thickness: 1),
                  ListTile(
                    title: const Text('Elevated Button Color'),
                    trailing: ColorIndicator(
                      hasBorder: true,
                      borderRadius: 22,
                      color: elevatedButtonColor,
                      onSelect: () async {
                        final Color colorBeforeDialog = elevatedButtonColor;
                        if (!(await _showColorPickerDialog(elevatedButtonColor, 'elevatedButtonColor', settingsBox))) {
                          setState(() {
                            settingsBox.put('elevatedButtonColor', colorBeforeDialog);
                          });
                        }
                      },
                    ),
                  ),
                  const Divider(thickness: 1),
                  ListTile(
                    title: const Text('Floating Button Color'),
                    trailing: ColorIndicator(
                      hasBorder: true,
                      borderRadius: 22,
                      color: floatingButtonColor,
                      onSelect: () async {
                        final Color colorBeforeDialog = floatingButtonColor;
                        if (!(await _showColorPickerDialog(floatingButtonColor, 'floatingButtonColor', settingsBox))) {
                          setState(() {
                            settingsBox.put('floatingButtonColor', colorBeforeDialog);
                          });
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Future<bool> _showColorPickerDialog(Color currentColor, String colorType, Box<dynamic> settingsBox) async {
    return ColorPicker(
      hasBorder: true,
      showColorName: true,
      borderRadius: 22,
      color: currentColor,
      heading: const Text('Select color'),
      subheading: const Text('Select color shade'),
      colorNameTextStyle: Theme.of(context).textTheme.caption,
      pickersEnabled: const <ColorPickerType, bool>{
        ColorPickerType.primary: true,
        ColorPickerType.accent: true,
        ColorPickerType.bw: true,
      },
      onColorChanged: (Color color) => setState(() {
        settingsBox.put(colorType, color);
      }),
    ).showPickerDialog(
      context,
      selectLabel: 'OK',
      barrierDismissible: false,
      constraints: const BoxConstraints(minHeight: 460, minWidth: 300, maxWidth: 320),
    );
  }
}

import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:movie_plugin/movie_plugin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _moviePlugin = MoviePlugin();
  TextEditingController stringKeyTextController = TextEditingController();
  TextEditingController stringValueTextController = TextEditingController();
  TextEditingController intKeyTextController = TextEditingController();
  TextEditingController intValueTextController = TextEditingController();
  TextEditingController boolKeyTextController = TextEditingController();
  TextEditingController boolValueTextController = TextEditingController();
  TextEditingController doubleKeyTextController = TextEditingController();
  TextEditingController doubleValueTextController = TextEditingController();
  String currentStringValue = '';
  String currentIntValue = '';
  String currentBoolValue = '';
  String currentDoubleValue = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'String Key',
                            // hintStyle: TextStyle(color: Colors.black),
                          ),
                          textInputAction: TextInputAction.next,
                          controller: stringKeyTextController,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        TextField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'String Value',
                          ),
                          textInputAction: TextInputAction.done,
                          controller: stringValueTextController,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              ElevatedButton(
                                  onPressed: () async {
                                    if (stringKeyTextController.text.isNotEmpty &&
                                        stringValueTextController.text.isNotEmpty) {
                                      await _moviePlugin.setString(
                                          stringKeyTextController.text,
                                          stringValueTextController.text);
                                    }
                                  },
                                  child: const Text('Set Value')),
                              const SizedBox(
                                width: 8,
                              ),
                              ElevatedButton(
                                  onPressed: () async {
                                    if (stringKeyTextController.text.isNotEmpty) {
                                      final currentString = await _moviePlugin
                                          .getString(stringKeyTextController.text);
                                      if (currentString != null) {
                                        setState(() {
                                          currentStringValue = currentString;
                                        });
                                      }
                                    }
                                  },
                                  child: const Text('Get Value')),
                              const SizedBox(
                                width: 8,
                              ),
                              ElevatedButton(
                                  onPressed: () async {
                                    final currentString =
                                        await _moviePlugin.clear();
                                    if (currentString != null) {
                                      setState(() {
                                        currentStringValue = '';
                                      });
                                    }
                                  },
                                  child: const Text('Clear')),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text('Current String Value is $currentStringValue'),
                        const SizedBox(
                          height: 16,
                        ),
                        TextField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Int Key',
                            // hintStyle: TextStyle(color: Colors.black),
                          ),
                          textInputAction: TextInputAction.next,
                          controller: intKeyTextController,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        TextField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Int Value',
                          ),
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly,
                          ],

                          controller: intValueTextController,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              ElevatedButton(
                                  onPressed: () async {
                                    if (intKeyTextController.text.isNotEmpty &&
                                        intValueTextController.text.isNotEmpty) {
                                      await _moviePlugin.setInt(
                                          intKeyTextController.text,
                                          int.parse(intValueTextController.text));
                                    }
                                  },
                                  child: const Text('Set Value')),
                              const SizedBox(
                                width: 8,
                              ),
                              ElevatedButton(
                                  onPressed: () async {
                                    if (intKeyTextController.text.isNotEmpty) {
                                      final currentValue = await _moviePlugin
                                          .getInt(intKeyTextController.text);
                                      if (currentValue != null) {
                                        setState(() {
                                          currentIntValue = '$currentValue';
                                        });
                                      }
                                    }
                                  },
                                  child: const Text('Get Value')),
                              const SizedBox(
                                width: 8,
                              ),
                              ElevatedButton(
                                  onPressed: () async {
                                    final currentString =
                                    await _moviePlugin.clear();
                                    if (currentString != null) {
                                      setState(() {
                                        currentIntValue = '';
                                      });
                                    }
                                  },
                                  child: const Text('Clear')),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text('Current Int Value is $currentIntValue'),
                        const SizedBox(
                          height: 16,
                        ),
                        TextField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Bool Key',
                            // hintStyle: TextStyle(color: Colors.black),
                          ),
                          textInputAction: TextInputAction.next,
                          controller: boolKeyTextController,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        TextField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Bool Value',
                          ),
                          textInputAction: TextInputAction.done,
                          controller: boolValueTextController,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              ElevatedButton(
                                  onPressed: () async {
                                    if (boolKeyTextController.text.isNotEmpty &&
                                        boolValueTextController.text.isNotEmpty) {
                                      await _moviePlugin.setBool(
                                          boolKeyTextController.text,
                                          boolValueTextController.text == 'true');
                                    }
                                  },
                                  child: const Text('Set Value')),
                              const SizedBox(
                                width: 8,
                              ),
                              ElevatedButton(
                                  onPressed: () async {
                                    if (boolKeyTextController.text.isNotEmpty) {
                                      final currentBool = await _moviePlugin
                                          .getBool(boolKeyTextController.text);
                                      if (currentBool != null) {
                                        setState(() {
                                          currentBoolValue = '$currentBool';
                                        });
                                      }
                                    }
                                  },
                                  child: const Text('Get Value')),
                              const SizedBox(
                                width: 8,
                              ),
                              ElevatedButton(
                                  onPressed: () async {
                                    final currentBool =
                                    await _moviePlugin.clear();
                                    if (currentBool != null) {
                                      setState(() {
                                        currentBoolValue = '';
                                      });
                                    }
                                  },
                                  child: const Text('Clear')),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text('Current Bool Value is $currentBoolValue'),
                        const SizedBox(
                          height: 16,
                        ),
                        TextField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Double Key',
                            // hintStyle: TextStyle(color: Colors.black),
                          ),
                          textInputAction: TextInputAction.next,
                          controller: doubleKeyTextController,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        TextField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Double Value',
                          ),
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
                          ],

                          controller: doubleValueTextController,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              ElevatedButton(
                                  onPressed: () async {
                                    if (doubleKeyTextController.text.isNotEmpty &&
                                        doubleValueTextController.text.isNotEmpty) {
                                      await _moviePlugin.setDouble(
                                          doubleKeyTextController.text,
                                          double.parse(doubleValueTextController.text));
                                    }
                                  },
                                  child: const Text('Set Value')),
                              const SizedBox(
                                width: 8,
                              ),
                              ElevatedButton(
                                  onPressed: () async {
                                    if (doubleKeyTextController.text.isNotEmpty) {
                                      final currentValue = await _moviePlugin
                                          .getDouble(doubleKeyTextController.text);
                                      if (currentValue != null) {
                                        setState(() {
                                          currentDoubleValue = '$currentValue';
                                        });
                                      }
                                    }
                                  },
                                  child: const Text('Get Value')),
                              const SizedBox(
                                width: 8,
                              ),
                              ElevatedButton(
                                  onPressed: () async {
                                    final currentString =
                                    await _moviePlugin.clear();
                                    if (currentString != null) {
                                      setState(() {
                                        currentDoubleValue = '';
                                      });
                                    }
                                  },
                                  child: const Text('Clear')),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text('Current Double Value is $currentDoubleValue'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

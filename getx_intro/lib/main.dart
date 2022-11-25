import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_intro/value_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Greengrocer',
      theme: ThemeData(
        primarySwatch: Colors.green,
        // scaffoldBackgroundColor: Colors.white.withAlpha(190),
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final textController = TextEditingController();

  final valueController = ValueController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //valor
            GetBuilder<ValueController>(
              init: valueController,
              builder: (controller) =>
                  Text("Value: ${controller.definedValue}"),
            ),

            //campo
            TextField(
              controller: textController,
            ),

            //botao
            GetBuilder<ValueController>(
                init: valueController,
                builder: (c) {
                  return c.isLoading
                      ? CircularProgressIndicator()
                      : ElevatedButton(
                          onPressed: () {
                            String value = textController.text;

                            valueController.setValue(value);
                          },
                          child: Text('Confirmar'),
                        );
                }),
          ],
        ),
      ),
    );
  }
}

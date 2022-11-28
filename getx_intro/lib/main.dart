import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_intro/user_controller.dart';
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
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final nameController = TextEditingController();
  final ageController = TextEditingController();

  final userController = MyController();

  TextStyle commonStyle() => const TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w500,
      );

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: Padding(
    //     padding: const EdgeInsets.all(16),
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       crossAxisAlignment: CrossAxisAlignment.stretch,
    //       children: [
    //         Text(
    //           'Nome: ',
    //           style: commonStyle(),
    //         ),
    //         Text(
    //           'idade: ',
    //           style: commonStyle(),
    //         ),
    //
    //         const Divider(
    //           thickness: 1.5,
    //           color: Colors.blue,
    //           height: 20,
    //         ),
    //
    //         Row(
    //           crossAxisAlignment: CrossAxisAlignment.end,
    //           children: [
    //             // Campo de nome
    //             Expanded(
    //               child: TextField(
    //                 controller: nameController,
    //                 decoration: const InputDecoration(
    //                   labelText: 'Nome',
    //                 ),
    //               ),
    //             ),
    //
    //             // Botão para salvar o nome
    //             ElevatedButton(
    //               onPressed: () {},
    //               child: const Text('Salvar'),
    //             ),
    //           ],
    //         ),
    //
    //         // Espaçamento
    //         const SizedBox(height: 10),
    //
    //         Row(
    //           crossAxisAlignment: CrossAxisAlignment.end,
    //           children: [
    //             // Campo de idade
    //             Expanded(
    //               child: TextField(
    //                 controller: ageController,
    //                 decoration: const InputDecoration(
    //                   labelText: 'Idade',
    //                 ),
    //               ),
    //             ),
    //
    //             // Botão para salvar a idade
    //             ElevatedButton(
    //               onPressed: () {},
    //               child: const Text('Salvar'),
    //             ),
    //           ],
    //         ),
    //
    //         // Espaçamento
    //         const SizedBox(height: 10),
    //       ],
    //     ),
    //   ),
    // );

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Obx(() {
              return Text(
                'Nome: ${userController.user.value.name}',
                style: commonStyle(),
              );
            }),
            Obx(() {
              return Text(
                'idade: ${userController.user.value.age}',
                style: commonStyle(),
              );
            }),

            const Divider(
              thickness: 1.5,
              color: Colors.blue,
              height: 20,
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // Campo de nome
                Expanded(
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      labelText: 'Nome',
                    ),
                  ),
                ),

                // Botão para salvar o nome
                ElevatedButton(
                  onPressed: () {
                    userController.setUsername(nameController.text);
                  },
                  child: const Text('Salvar'),
                ),
              ],
            ),

            // Espaçamento
            const SizedBox(height: 10),

            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // Campo de idade
                Expanded(
                  child: TextField(
                    controller: ageController,
                    decoration: const InputDecoration(
                      labelText: 'Idade',
                    ),
                  ),
                ),

                // Botão para salvar a idade
                ElevatedButton(
                  onPressed: () {
                    userController.setAge(
                      int.parse(ageController.text),
                    );
                  },
                  child: const Text('Salvar'),
                ),
              ],
            ),

            // Espaçamento
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

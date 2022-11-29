import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_intro/user_controller.dart';
import 'package:getx_intro/value_controller.dart';

void main() {

  // Get.put<MyController>(MyController());

  Get.lazyPut<MyController>(() => MyController());

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

  final userController = Get.find<MyController>();

  TextStyle commonStyle() =>
      const TextStyle(
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

//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Obx(() {
//               return Text(
//                 'Nome: ${userController.user.value.name}',
//                 style: commonStyle(),
//               );
//             }),
//             Obx(() {
//               return Text(
//                 'idade: ${userController.user.value.age}',
//                 style: commonStyle(),
//               );
//             }),
//
//             const Divider(
//               thickness: 1.5,
//               color: Colors.blue,
//               height: 20,
//             ),
//
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.end,
//               children: [
//                 // Campo de nome
//                 Expanded(
//                   child: TextField(
//                     controller: nameController,
//                     decoration: const InputDecoration(
//                       labelText: 'Nome',
//                     ),
//                   ),
//                 ),
//
//                 // Botão para salvar o nome
//                 ElevatedButton(
//                   onPressed: () {
//                     userController.setUsername(nameController.text);
//                   },
//                   child: const Text('Salvar'),
//                 ),
//               ],
//             ),
//
//             // Espaçamento
//             const SizedBox(height: 10),
//
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.end,
//               children: [
//                 // Campo de idade
//                 Expanded(
//                   child: TextField(
//                     controller: ageController,
//                     decoration: const InputDecoration(
//                       labelText: 'Idade',
//                     ),
//                   ),
//                 ),
//
//                 // Botão para salvar a idade
//                 ElevatedButton(
//                   onPressed: () {
//                     userController.setAge(
//                       int.parse(ageController.text),
//                     );
//                   },
//                   child: const Text('Salvar'),
//                 ),
//               ],
//             ),
//
//             // Espaçamento
//             const SizedBox(height: 10),
//           ],
//         ),
//       ),
//     );
//   }
// }


    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
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
                    userController.setAge(int.parse(ageController.text));
                  },
                  child: const Text('Salvar'),
                ),
              ],
            ),

            // Espaçamento
            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return DataScreen(
                        // userController: userController,
                      );
                    },
                  ),
                );
              },
              child: const Text('Tela de dados'),
            ),
          ],
        ),
      ),
    );
  }
}

class DataScreen extends StatelessWidget {

  final MyController userController = Get.find();

  DataScreen({
    Key? key,}) : super(key: key);

  TextStyle commonStyle() =>
      const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dados'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Apresentação do nome
            Obx(() {
              return Text(
                'nome: ${userController.user.value.name}',
                style: commonStyle(),
              );
            }),

            // Apresentação da idade
        Obx(() {
              return Text(
                'idade: ${userController.user.value.age}',
                style: commonStyle(),
              );
            }),
          ],
        ),
      ),
    );
  }
}
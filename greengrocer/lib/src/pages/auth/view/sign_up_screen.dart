import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:greengrocer/src/pages/auth/controller/auth_controller.dart';
import 'package:greengrocer/src/pages/widgets/custom_text_field.dart';
import 'package:greengrocer/src/pages/auth/config/custom_colors.dart';
import 'package:greengrocer/src/services/validators.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  final cpfFormatter = MaskTextInputFormatter(
      mask: '###.###.###-##', filter: {'#': RegExp(r'[0-9]')});

  final phoneFormatter = MaskTextInputFormatter(
      mask: '(##) # ####-####', filter: {'#': RegExp(r'[0-9]')});

    final _formKey = GlobalKey<FormState>();

    final emailController = TextEditingController();
    final passController = TextEditingController();
    final nameController = TextEditingController();
    final cellController = TextEditingController();
    final cpfController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;


    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              Column(
                children: [
                  const Expanded(
                    child: Center(
                      child: Text(
                        'Cadastro',
                        style: TextStyle(color: Colors.white, fontSize: 35),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32, vertical: 40),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(45),
                      ),
                    ),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const CustomTextField(
                            icon: Icons.email,
                            textInputType: TextInputType.emailAddress,
                            label: 'Email',
                            validator: emailValidator,
                          ),
                          const CustomTextField(
                            icon: Icons.lock,
                            label: 'Senha',
                            isPass: true,
                            validator: passwordValidator,
                          ),
                          const CustomTextField(
                            icon: Icons.person,
                            label: 'Nome',
                            validator: nomeValidator,
                          ),
                          CustomTextField(
                            icon: Icons.phone,
                            inputFormatters: [phoneFormatter],
                            textInputType: TextInputType.phone,
                            label: 'Celular',
                            validator: phoneValidator,
                          ),
                          CustomTextField(
                            icon: Icons.file_copy,
                            inputFormatters: [cpfFormatter],
                            label: 'CPF',
                            textInputType: TextInputType.number,
                            validator: cpfValidator,
                          ),
                          SizedBox(
                            height: 50,
                            child: GetX<AuthController>(
                              builder: (authController) {
                                return ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18),
                                    ),
                                  ),
                                  onPressed: authController.isLoading.isTrue
                                      ? null
                                      : () {
                                          FocusScope.of(context).unfocus();

                                          if (_formKey.currentState!.validate()) {
                                            // Get.offNamed(PagesRoutes.baseRoute);
                                            String email = emailController.text;
                                            String password = passController.text;
                                            String cell = cellController.text;
                                            String cpf = cpfController.text;
                                            String name = nameController.text;
                                          //   authController.signUp(
                                          //       email: email,
                                          //       password: password,
                                          //       name: name,
                                          //       cpf: cpf,
                                          //       cell: cell);
                                          // }
                                        },
                                  child: authController.isLoading.isTrue ? CircularProgressIndicator() : const Text(
                                    'Cadastrar',
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                left: 10,
                top: 10,
                child: SafeArea(
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

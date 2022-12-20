import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:greengrocer/src/pages/auth/controller/auth_controller.dart';
import 'package:greengrocer/src/pages/widgets/custom_text_field.dart';
import 'package:greengrocer/src/pages/auth/config/custom_colors.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  final cpfFormatter = MaskTextInputFormatter(
      mask: '###.###.###.-##', filter: {'#': RegExp(r'[0-9]')});

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
                          CustomTextField(
                            icon: Icons.email,
                            label: 'Email',
                            validator: (email) {
                              if (email == null || email.isEmpty) {
                                return "Insira um email válido!";
                              }

                              if (!email.isEmail) {
                                return "Insira um email válido!";
                              }

                              return null;
                            },
                          ),
                          CustomTextField(
                            icon: Icons.lock,
                            label: 'Senha',
                            isPass: true,
                            validator: (password) {
                              if (password == null || password.isEmpty) {
                                return "Insira uma senha!";
                              }

                              if (password.length < 7) {
                                return "A senha deve ter 7 ou mais caracteres";
                              }

                              return null;
                            },
                          ),
                          CustomTextField(
                            icon: Icons.person,
                            label: 'Nome',
                            validator: (name) {
                              if (name == null || name.isEmpty) {
                                return "Insira um nome válido!";
                              }

                              if (name.length < 3) {
                                return "Insira um nome válido!";
                              }

                              return null;
                            },
                          ),
                          CustomTextField(
                            icon: Icons.phone,
                            inputFormatters: [phoneFormatter],
                            label: 'Celular',
                            validator: (celular) {
                              if (celular == null || celular.isEmpty) {
                                return "Insira um email válido!";
                              }

                              if(celular.length < 11){
                                return "Insira um email válido!";
                              }
                              return null;
                            },
                          ),
                          CustomTextField(
                            icon: Icons.file_copy,
                            inputFormatters: [cpfFormatter],
                            label: 'CPF',
                            validator: (cpf) {
                              if (cpf == null || cpf.isEmpty) {
                                return "Insira um CPF válido!";
                              }

                              if (!cpf.isCpf) {
                                return "Insira um CPF válido!";
                              }

                              return null;
                            },
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
                                            authController.signUp(
                                                email: email,
                                                password: password,
                                                name: name,
                                                cpf: cpf,
                                                cell: cell);
                                          } else {
                                            print("INVALIDO");
                                          }
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

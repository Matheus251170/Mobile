String? emailValidator(email) {
  if (email == null || email.isEmpty) {
    return "Insira um email válido!";
  }

  if (!email.isEmail) {
    return "Insira um email válido!";
  }

  return null;
}

String? passwordValidator(password) {
  if (password == null || password.isEmpty) {
    return "Insira uma senha!";
  }

  if (password.length < 7) {
    return "A senha deve ter 7 ou mais caracteres";
  }

  return null;
}

String? nomeValidator(name) {
  if (name == null || name.isEmpty) {
    return "Insira um nome válido!";
  }

  // if (name.length < 3) {
  //   return "Insira um nome válido!";
  // }

  final names = name.split(' ');

  if(names.lenght == 1) return 'Digite seu nome completo';

  return null;
}

String? phoneValidator(celular) {
  if (celular == null || celular.isEmpty) {
    return "Insira um celular válido!";
  }

  if (!celular.isPhoneNumber) {
    return "Insira um celular válido!";
  }
  return null;
}


String? cpfValidator(cpf) {
  if (cpf == null || cpf.isEmpty) {
    return "Insira um CPF válido!";
  }

  if (!cpf.isCpf) {
    return "Insira um CPF válido!";
  }

  return null;
}
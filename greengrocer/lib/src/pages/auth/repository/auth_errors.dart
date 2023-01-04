String authErrorsString(String? code){
  switch(code){
    case 'INVALID_CREDENTIALS':
      return 'Email ou senha inválidos!';


    default:
      return 'Algo de errado aconteceu.';
  }
}
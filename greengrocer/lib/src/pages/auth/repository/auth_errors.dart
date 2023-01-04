String authErrorsString(String? code){
  switch(code){
    case 'INVALID_CREDENTIALS':
      return 'Email ou senha inválidos!';
    case 'Invalid session token':
      return 'Sessão expirada';


    default:
      return 'Algo de errado aconteceu.';
  }
}
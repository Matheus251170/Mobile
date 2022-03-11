import * as React from 'react';
import { NavigationContainer} from '@react-navigation/native';
import { createStackNavigator} from '@react-navigation/stack';


import TelaAbertura from './TelaAbertura';
import CadastroCliente from './CadastroCliente';
import Cadastro from './Cadastro';
import TelaPrincipal from './TelaPrincipal';

const Stack = createStackNavigator();

export default function Rotas(){
  return(

  <NavigationContainer>
      <Stack.Navigator>
        <Stack.Screen name="TelaAbertura" component={TelaAbertura}/>
        <Stack.Screen name="CadastroCliente" component={CadastroCliente}/>
        <Stack.Screen name="Cadastro" component={Cadastro}/>
        <Stack.Screen name="TelaPrincipal" component={TelaPrincipal}/>

      </Stack.Navigator>
  </NavigationContainer>
  );
}
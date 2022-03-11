import * as React from 'react';
import{NavigationContainer} from '@react-navigation/native';
import{createStackNavigator, HeaderBackButton} from '@react-navigation/stack';

import Animes from './Animes';
import AnimesAcao from './AnimesAcao';
import AnimesRomance from './AnimesRomance';

import RotaNav from './RotaNav';

const Stack = createStackNavigator();

export default function BotaoNavAnime() {
  return (
    <Stack.Navigator>
      <Stack.Screen name='Animes'component={Animes}/>
      <Stack.Screen name='Animes Ação' component={AnimesAcao}/>
      <Stack.Screen name='Animes Romance' component={AnimesRomance}/>
    </Stack.Navigator>
  );
}


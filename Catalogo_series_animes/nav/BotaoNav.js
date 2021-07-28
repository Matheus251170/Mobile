import * as React from 'react';
import{NavigationContainer} from '@react-navigation/native';
import{createStackNavigator, HeaderBackButton} from '@react-navigation/stack';

import Home from './Home';
import Animes from './Animes';
import AnimesAcao from './AnimesAcao';
import AnimesRomance from './AnimesRomance';
import Series from './Series';
import SeriesComedia from './SeriesComedia';
import SeriesSuspense from './SeriesSuspense';

import RotaNav from './RotaNav';

const Stack = createStackNavigator();

export default function BotaoNav() {
  return (
    <Stack.Navigator>
      <Stack.Screen name='Home'component={Home}/>
    </Stack.Navigator>
  );
}


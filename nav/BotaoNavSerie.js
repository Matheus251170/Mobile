import * as React from 'react';
import{NavigationContainer} from '@react-navigation/native';
import{createStackNavigator, HeaderBackButton} from '@react-navigation/stack';



import Series from './Series';
import SeriesComedia from './SeriesComedia';
import SeriesSuspense from './SeriesSuspense';

import RotaNav from './RotaNav';

const Stack = createStackNavigator();

export default function BotaoNavSerie() {
  return (
    <Stack.Navigator>
      <Stack.Screen name='Series' component={Series}/>
      <Stack.Screen name='Series Comédia' component={SeriesComedia}/>
      <Stack.Screen name='Series Suspense' component={SeriesSuspense} />
    </Stack.Navigator>
  );
}


import * as React from 'react';
import {Text, View} from 'react-native';
import {NavigationContainer} from '@react-navigation/native';
import {createBottomTabNavigator} from '@react-navigation/bottom-tabs';
import {MaterialCommunityIcons} from '@expo/vector-icons';


import Home from './Home';
import Animes from './Animes';
import Series from './Series';

import BotaoNav from './BotaoNav';
import BotaoNavAnime from './BotaoNavAnime';
import BotaoNavSerie from './BotaoNavSerie';
const Tab = createBottomTabNavigator();

export default function RotaNav() {
  return (
<Tab.Navigator initialTabNavigation='Home' tabBarOptions={{activeTinColor:""}}>
<Tab.Screen name="Home" 
component={BotaoNav}
options={{
  tabBarLabel:'Home',
  tabBarIcon: ({color, size}) => <MaterialCommunityIcons 
  name="home-flood" color={color} size={size}/> 
}}/>
<Tab.Screen name="Animes" 
component={BotaoNavAnime}
options={{
  tabBarLabel:'Animes',
  tabBarIcon: ({color, size}) => <MaterialCommunityIcons 
  name="robot" color={color} size={size}/> 
}}/>

<Tab.Screen name="Series" 
component={BotaoNavSerie}
options={{
  tabBarLabel:'Series',
  tabBarIcon: ({color, size}) => <MaterialCommunityIcons 
  name="projector-screen" color={color} size={size}/> 
}}/>
</Tab.Navigator>
  ); }
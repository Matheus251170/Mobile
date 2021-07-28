import * as React from 'react';
import {Text, View, StyleSheet, Image} from 'react-native';

export default function Home(){
return(
  <View style={styles.container}>
  

  <Text style={styles.titulo}> Bom te ver aqui </Text>

<Image style={styles.img} source={{uri:'https://cdn.pixabay.com/photo/2016/11/15/07/09/photo-manipulation-1825450_960_720.jpg',}} />
  <Text style={styles.principal}>Aplicativo para quem gosta de séries e animes</Text>
  </View>
);
}

const styles = StyleSheet.create({
container:{
  flex: 1,
  justifyContent: 'center',
  alignItems: 'center',
  backgroundColor: 'green'
},
titulo: {
  fontSize: 20,
  color: 'red',
  paddingBottom: 20},
principal: {
  fontSize: 17,
  textAlign: 'center',
  color: 'blue',
  margin: 20,
  paddingBottom: 20},
  img:{
    width:322,
    height: 200,
    paddingTop: 10
  }
})
import * as React from 'react';
import {Text, View, StyleSheet, Image, Button, ScrollView} from 'react-native';
export default function AnimesAcao(props){
return(
  <View style={styles.container}>
  
  <ScrollView>
  <Text style={styles.titulo}> Animes de Ação </Text>

<Image style={styles.img} source={{ uri:'https://cdn.shortpixel.ai/client/q_glossy,ret_img,w_640/https://curso1000.com.br/wp-content/uploads/2020/03/animes-de-a%C3%A7%C3%A3o-2.jpg',}} />
  <Text style={styles.principal}>Cavaleiros do Zodíaco</Text>
<Image style={styles.img} source={{ uri:' https://cdn.shortpixel.ai/client/q_glossy,ret_img,w_640/https://curso1000.com.br/wp-content/uploads/2020/03/animes-de-a%C3%A7%C3%A3o-4.jpg',}} />
 <Text style={styles.principal}>Dragon Ball Z</Text>
    </ScrollView>
  </View>
);
}

const styles = StyleSheet.create({
container:{
  flex: 1,
  justifyContent: 'center',
  alignItems: 'center',
  backgroundColor: 'orange'
},
titulo: {
  fontSize: 24,
  color: 'green',
  paddingBottom: 20},
principal: {
  fontSize: 16,
  textAlign: 'center',
  color: 'blue',
  margin: 10,
  paddingBottom: 20},
  img:{
    width:322,
    height: 200,
    paddingTop: 10
  },
})


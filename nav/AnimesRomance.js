import * as React from 'react';
import {Text, View, StyleSheet, Image, Button, ScrollView} from 'react-native';

export default function AnimesRomance(props){
return(
  <View style={styles.container}>
  <ScrollView>

  <Text style={styles.titulo}> Animes de Romance </Text>

<Image style={styles.img} source={{ uri:'https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx20665-CnzR2zVpdxtR.png'}} />
  <Text style={styles.principal}>Your Lie in April</Text>
<Image style={styles.img} source={{ uri:'https://3.bp.blogspot.com/-f_S4UGgNXs4/WmxX0lwjmBI/AAAAAAAAC14/sBUTRBVkFXYOv0IO1KlhtPedxRlSGbnpwCLcBGAs/s640/Ore-Monogatari-03-4.jpg'}} />
 <Text style={styles.principal}>Ore Monogatari </Text>
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


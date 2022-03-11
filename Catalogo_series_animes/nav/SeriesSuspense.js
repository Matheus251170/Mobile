import * as React from 'react';
import {Text, View, StyleSheet, Image, Button} from 'react-native';

export default function SeriesSuspense(props){
return(
  <View style={styles.container}>
  

  <Text style={styles.titulo}> Série Suspense </Text>

<Image style={styles.img} source={{ uri:'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/American_Horror_Story.svg/1200px-American_Horror_Story.svg.png',}} />
  <Text style={styles.principal}>American Horror Story</Text>
<Image style={styles.img} source={{ uri:'https://th.bing.com/th/id/OIP.vxck1xWD3U2e--TczTdPTwHaHa?pid=ImgDet&rs=1',}} />
 <Text style={styles.principal}>The Witcher</Text>
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


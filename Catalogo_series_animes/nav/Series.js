import * as React from 'react';
import {Text, View, StyleSheet, Image, Button} from 'react-native';
const Separator = () => <View style={styles.separator} />;
export default function Series(props){
return(
  <View style={styles.container}>
  

  <Text style={styles.titulo}> Séries </Text>

<Image style={styles.img} source={{ uri:'https://s2.glbimg.com/476xiyzHwobzomhiO6QZ8ZaZPCM=/362x536/https://s2.glbimg.com/gw3G9SRdfhWZbNxnMuwbznGiAW0=/i.s3.glbimg.com/v1/AUTH_c3c606ff68e7478091d1ca496f9c5625/internal_photos/bs/2020/s/Y/z9FwyXQjq1flWRIm3mUA/2020-726-series-warner-the-big-bang-theory-poster.jpg',}} />
  <Text style={styles.principal}>Suas séries quando quiser</Text>
  <Button
  title='Comédia'
  onPress={()=>{props.navigation.navigate('Series Comédia'); 
  }}/>
  <Separator />
<Button
  title='Suspense'
  onPress={()=>{props.navigation.navigate('Series Suspense');
  }}/>
  </View>
);
}

const styles = StyleSheet.create({
container:{
  flex: 1,
  justifyContent: 'center',
  alignItems: 'center',
  backgroundColor: 'blue'
},
titulo: {
  fontSize: 24,
  color: 'green',
  paddingBottom: 20},
principal: {
  fontSize: 16,
  textAlign: 'center',
  color: 'gray',
  margin: 20,
  paddingBottom: 20},
  img:{
    width:322,
    height: 200,
    paddingTop: 10
  },
   separator: {
    marginVertical: 8,
    borderBottomColor: '#737373',
    borderBottomWidth: StyleSheet.hairlineWidth,
  }
})
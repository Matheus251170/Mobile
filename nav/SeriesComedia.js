import * as React from 'react';
import {Text, View, StyleSheet, Image, Button} from 'react-native';


export default function SeriesComedia(props){
return(
  <View style={styles.container}>
  

  <Text style={styles.titulo}> Série Comédia </Text>

<Image style={styles.img} source={{ uri:'https://3.bp.blogspot.com/-_TkG1vM9eFc/XCpryef2bmI/AAAAAAAAMws/tCqhW0udtQILWg9i5SncWISHJqiWL-f-QCEwYBhgL/s1600/maxresdefault.jpg',}} />
  <Text style={styles.principal}>Brooklin Nine-Nine</Text>
<Image style={styles.img} source={{ uri:'https://s2.glbimg.com/476xiyzHwobzomhiO6QZ8ZaZPCM=/362x536/https://s2.glbimg.com/gw3G9SRdfhWZbNxnMuwbznGiAW0=/i.s3.glbimg.com/v1/AUTH_c3c606ff68e7478091d1ca496f9c5625/internal_photos/bs/2020/s/Y/z9FwyXQjq1flWRIm3mUA/2020-726-series-warner-the-big-bang-theory-poster.jpg',}} />
 <Text style={styles.principal}>The Big Bang - A Teoria</Text>
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


import * as React from 'react'; 
import {Text, View, StyleSheet, Image, Button} from 'react-native';

const Separator = () => <View style={styles.separator} />;

export default function Animes(props){
return(
  <View style={styles.container}>
  
  <Text style={styles.titulo}> Animes </Text>

<Image style={styles.img} source={{ uri:'https://s.aficionados.com.br/imagens/image-1767_cke.jpg',}} />
  <Text style={styles.principal}>Seus animes estão aqui</Text>
  <Button
  title="Ação"
  onPress={()=>{props.navigation.navigate('Animes Ação')
  }}/>
  <Separator /> 
<Button
  title="Romance"
  onPress={()=>{props.navigation.navigate('Animes Romance')
  }}/>
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




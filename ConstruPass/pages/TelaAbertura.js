import * as React from 'react';
import {StyleSheet, View, Text, Image, ScrollView, Button } from 'react-native';
import { TextInput } from 'react-native-paper';

const Separator = () => <View style={estilo.separator} />;
export default function 
Home(props) 
{
 return (
<View style ={estilo.container}>

  <ScrollView>
  <Text style={estilo.titulo}> ConstruPass </Text>
  <View >
    <Image style={estilo.imagem} source={require("../assets/logotcc01.png")}/>
    </View >
    <View >
    <Text style={estilo.login}> E-Mail </Text>
      <TextInput /**style={estilo.borda}**/  textContentType = 'emailAddress' autoCompleteType = 'email' label='Inserir E-mail'/>
     <Text style={estilo.login}> Senha </Text>
      <TextInput  textContentType = 'Password' secureTextEntry={true} label='Inserir Senha'/>
    </View >

<View style={estilo.fixToText}>
<Separator/>
    <Button title = "Login" color = "#D96704" mode="contained" onPress={() => console.log('Pressed'),()=>{props.navigation.navigate('TelaPrincipal')}}></Button>
</View>
<View>
<Separator/>
</View>
<View style={estilo.fixToText}>
    <Button title = "Ainda Não Sou Cliente" color = "#D96704" mode="contained"  
    onPress = {() => console.log('Pressed'),()=>{props.navigation.navigate('Cadastro')}}> </Button>
</View>
 <View >
    <Text style={estilo.titulo}> Sobre Nós </Text>
     
    </View >
    
    <Text style={estilo.texto}>A ConstruPass é uma plataforma que uni prestadores de serviço, com pessoas que demandam desses serviços .</Text>

        <Text style={estilo.legenda}> Acesse nosso Instagram @ConstruPass Copyright &copy; 2021 - All Rights Reserved - </Text>

</ScrollView>
</View>
 ) 
}

const estilo = StyleSheet.create(
  {
  container:
    {
      paddingtop: 700,
      flex:1,
      backgroundColor: "#303030",
      justifyContent: "center",
      alignItems: "center",
    },
    titulo:
    {
      fontSize: 30,
      color: '#D96704',
      FontWeight: "bold",
      marginTop: 30,
      textAlign: "center",
      paddingBottom: 10,
      borderRadius: 30,
    },
    imagem:
    {
    marginTop: 30,
    alignSelf: "center",
    marginBottom: 30,
    width: 150,
    height: 150,
    borderRadius: 105,
    },
    legenda:
    {
      fontSize: 18,
      textAlign: "center",
      FontWeight: "bold",
      paddingBottom: 20,
      padding: 20,
      paddingTop: 20,
      color: '#737373',

    },
    login:
    {
      fontSize: 18,
      FontWeight: "bold",
      paddingBottom: 20,
      paddingTop: 20,
      color: 'white',

    },
    texto:
    {
     textAlign: "justify",
      fontSize: 20,
      FontWeight: "bold",
      paddingLeft: 50,
      paddingRight: 50,
      paddingBottom: 20,
      paddingTop: 20,
      color: 'white',
    },
    fixToText: {
      flex: 1,
      height: 60,
    flexDirection: 'column',
    justifyContent: 'space-between',
  },
    separator: {
    marginVertical: 15,
    borderBottomColor: '#303030',
    borderBottomWidth: StyleSheet.hairlineWidth,
  }
  //Copyright &copy; 2021 - All Rights Reserved - <a href="#">ConstruPass
  //borda:{
   // underlineColorAndroid:'blue',
  //}
  }
)
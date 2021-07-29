import * as React from 'react';
import  {useState}  from "react";
import {StyleSheet, View, Text, Image, ScrollView, Button, Picker  } from 'react-native';
import { TextInput  } from 'react-native-paper';

const Separator = () => <View style={estilo.separator} />;
export default function 
CadastroFuncionario() 
{  const [selectedValue, setSelectedValue] = useState("java");
  return (
<View style ={estilo.container}>

  <ScrollView>
  <Text style={estilo.titulo}> ConstruPass </Text>
  <View >
    <Image style={estilo.imagem} source={require("../assets/logotcc01.png")}/>
    </View>
    <View >
    <Text style={estilo.titulo}> Cadastro Cliente </Text>
    <Text style={estilo.login}> Nome Completo </Text>
      <TextInput  textContentType = 'emailAddress' label='Digite o seu nome completo'/>
    <Text style={estilo.login}> CPF </Text>
      <TextInput  textContentType = 'Password' label='Digite sua CPF'/>  
    <Text style={estilo.login}> RG </Text>
      <TextInput  textContentType = 'Password' label='Digite seu RG'/>  
    <Text style={estilo.login}> CEP </Text>
      <TextInput  textContentType = 'emailAddress' label='Digite o seu CEP'/>
    <Text style={estilo.login}> Endereço Completo </Text>
      <TextInput  textContentType = 'emailAddress' label='Digite o seu endereço'/>
    <Text style={estilo.login}> Complemento</Text>
      <TextInput  textContentType = 'emailAddress' label='Digite o Complemento'/>
    <Text style={estilo.login}> Telefone </Text>
      <TextInput  textContentType = 'telephoneNumber' keyboardType='number-pad' label='Digite o seu telefone'/>
    <Text style={estilo.login}> Celular </Text>
      <TextInput  textContentType = 'telephoneNumber' keyboardType='number-pad' label='Digite seu celular'/>     
    <Text style={estilo.login}> E-Mail </Text>
      <TextInput /**style={estilo.borda}**/  textContentType = 'emailAddress' label='Inserir E-mail'/>
    <Text style={estilo.login}> Senha </Text>
      <TextInput  textContentType = 'Password' secureTextEntry={true} label='Digite sua senha'/>
    <Text style={estilo.login}> Repita a Senha </Text>
      <TextInput  textContentType = 'Password' secureTextEntry={true} label='Digite novamente sua senha'/>

 
    </View >
    

<View>
<Text> </Text>
</View>
<View style={estilo.fixToText}>
<Separator/>
    <Button title = "Cadastrar" color = "#D96704" mode="contained" onPress={() => console.log('Pressed')}> </Button>
    
</View>
<Text style={estilo.legenda}>Acesse nosso Instagram @ConstruPass Copyright &copy; 2021 - All Rights Reserved - </Text>
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
      width: 300,
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
  },
  //borda:{
   // underlineColorAndroid:'blue',
  //}
  }
)
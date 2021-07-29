import * as React from 'react';
import  {useState}  from "react";
import {StyleSheet, View, Text, Image, ScrollView, Button, Picker  } from 'react-native';
import { TextInput  } from 'react-native-paper';

const Separator = () => <View style={estilo.separator} />;
export default function 
Cadastro(props) 
{  const [selectedValue, setSelectedValue] = useState("java");
  return (
  <View style ={estilo.container}>
<Text style={estilo.titulo}> Escolha a forma de Cadastro </Text>
  <ScrollView>  
<View style={estilo.fixToText}>
<Separator/>
    <Button title = "Desejo me cadastrar como Cliente" color = "#D96704" mode="contained" 
    onPress = {() => console.log('Pressed'),()=>{props.navigation.navigate('CadastroCliente')}}></Button>
</View>
<View>
<Separator/>
</View>
<View style={estilo.fixToText}>
    <Button title = "Desejo me cadastrar como Funcionario" color = "#D96704" mode="contained"  
    onPress = {() => console.log('Pressed'),()=>{props.navigation.navigate('CadastroCliente')}}> </Button>
</View>
</ScrollView>
    <Text style={estilo.legenda}>Acesse nosso Instagram @ConstruPass Copyright &copy; 2021 - All Rights Reserved - </Text>

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
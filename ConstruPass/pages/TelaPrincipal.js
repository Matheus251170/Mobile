import * as React from 'react';
import  {useState}  from "react";
import {StyleSheet, View, Text, Image, ScrollView, Button, Picker  } from 'react-native';
import { TextInput  } from 'react-native-paper';

const Separator = () => <View style={estilo.separator} />;
export default function 
TelaPrincipal() 
{  const [selectedValue, setSelectedValue] = useState("java");
  return (
<View style ={estilo.container}>

  <ScrollView>
  <Text style={estilo.titulo}> ConstruPass </Text>
  <View >
    <Image style={estilo.imagem} source={require("../assets/logotcc01.png")}/>
    </View>
    <View >
    <Text style={estilo.nmt}> Nome Trabalhador </Text>
    <Text style={estilo.dct}> Descrição do Trabalhador </Text>
    <View style={estilo.fixToText}>
<Separator/>
    <Button title = "Saiba mais" color = "#D96704" mode="contained" onPress={() => console.log('Pressed')}> </Button>  
</View>
<Separator/>
    </View >
    

<View>
<Text> </Text>
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
    nmt:
    {
      fontSize: 30,
      color: '#D96704',
      FontWeight: "bold",
      paddingLeft: 30,
      paddingLeft: 30,
      marginTop: 30,
      textAlign: "left",
      paddingBottom: 10,
      borderRadius: 30,
    },
    dct:
    {
     textAlign: "justify",
      fontSize: 20,
      FontWeight: "bold",
      paddingLeft: 30,
      paddingRight: 50,
      paddingBottom: 20,
      paddingTop: 20,
      color: 'white',
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
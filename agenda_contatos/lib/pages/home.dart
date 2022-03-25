import 'package:agenda_contatos/helpers/contact_helper.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  ContactHelper helper = ContactHelper();

  @override
  void initState(){
    
    super.initState();

    Contact c = Contact();
    c.name = 'Matheus';
    c.email = 'mateheus@gma.com';
    c.phone = "9787788788";
    c.img = 'img';

    helper.saveContact(c);

    helper.getAllContacts().then((value) => print(value));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
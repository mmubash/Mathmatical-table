import 'package:flutter/material.dart';
import 'package:untgiitled2/signupPage.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final  _digit =TextEditingController();

  List<String> _table=[];
  void _generateTable(){
    setState(() {
      try{
        _table = [];
        for (int i = 10; i > 1; i--) {
          _table.add("${int.parse(_digit.text)} x $i = ${int.parse(_digit.text) * i}");
        }
      }catch(e){
        _table=["Please enter a number "];
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter digit ",
              ),
              keyboardType: TextInputType.number,
              controller: _digit,
            ),
          ),
          SizedBox(height: 30,),
          GestureDetector(
            onTap: (){
              _generateTable();
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Signuppage(list: _table)));
            },
            child: Container(
              width: 80,
              height: 30,
              decoration:  BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(9),
              ),
              child: Center(child: Text('Generate')),
            ),
          ),

         ],
       ),
    );
  }
}

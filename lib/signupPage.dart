import 'package:flutter/material.dart';
class Signuppage extends StatefulWidget {
  var list=[];
  Signuppage({super.key,required this.list});
  @override
  State<Signuppage> createState() => _SignuppageState();
}
class _SignuppageState extends State<Signuppage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: widget.list.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(widget.list[index]),
              );
            },
          ),
        ),
      )
    );
  }
}

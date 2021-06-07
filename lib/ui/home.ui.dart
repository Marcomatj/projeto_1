import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final _firstController = TexteEditingController();
  final _secondController = TexteEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: getAppBody(),
    );
  }

  AppBar getAppBar(){
    return AppBar(
        title: Text("PrimeiroApp"),
        backgroundColor: Colors.green,
        actions: [
          IconButton(icon: Icon(Icons.update), 
          onPressed: _update,
          )
        ],
        centerTitle: true,
      );
  }



  void _update(){
    debugPrint("O botao de update foi pressionado");
  }

  Widget getAppBody() {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 20)
      child: Column(
        children: [
          getTextWidget("valor 1", _firstController, textFormFieldColor: Colors.red),
          getTextWidget("valor 2", _secondController, textFormFieldColor: Colors.green),
        ],
      ),
    );
  }

  Widget getTextWidget(String text, TextEditingController controller,
                        {Color textFormFieldColor = Colors.blue}){
    return Row(
      children: [
        Text(text,
          style: getTextStyle(),
        ),
        Flexible(
          child: TextFormField(
            keyboardType: TextInputType.number,
            controller: controller,
            textAlign: TextAlign.center,
            style: getTextStyle(color: textFormFieldColor),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            debugPrint("botao pressionado");
            incrementValue(controller);
          }, 
          child: Text("+"),
        )
      ],
    );
  }

  void incrementValue(TextEditingController controller){
    debugPrint("o valor recebido foi ${controller.text}");

    int? parsedValue = int.tryParse(controller.text);
    
    if (parsedValue == null){
      return;
    }

    parsedValue += 1;

    setState((){
      controller.text = parsedValue.toString();
    });
  }

  TextStyle getTextStyle({Color color = Colors.blue}){
    return TextStyle(
          fontSize: 18,
          color: color,
          fontWeight: FontWeight.bold,
        ),
  }


  /* Widget getAppBody() {
    return Container(
      child: Column(
        children: [
          Row(  
            children: [
              Text("Primeiro Item"),
            ],
          ),
        Row(  
            children: [
              Text("Primeiro Item"),
            ],
          ),
        Row(  
            children: [
              Text("Primeiro Item"),
            ],
          ),
      ]),
    );
  } */

}
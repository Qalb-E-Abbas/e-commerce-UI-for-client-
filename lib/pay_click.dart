import 'package:flutter/material.dart';


import 'constants.dart';
import 'home_screen.dart';

class PayClick extends StatefulWidget {
  @override
  _PayClickState createState() => _PayClickState();
}

class _PayClickState extends State<PayClick> {

  int _groupValue = -1;





  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.deepOrangeAccent),
        elevation: 0.0,
        backgroundColor: Colors.white,
        flexibleSpace:
        Container(
          margin: EdgeInsets.only(top: 60, left: 50, right: 5.0),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.deepOrangeAccent),
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0)
          ),
          height: 35,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Customer name'),
                Icon(Icons.search, color: Colors.deepOrangeAccent)
              ],),
          ),
        ),
      ),
        drawer: Drawer(),
      body: SingleChildScrollView(
        child: Container(
          width: width,
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Column(
                    children: [
                      Text('INV 20213'),
                      Text('Customer name'),
                      Text('Address'),
                    ],
                  ),

                  Text('10-01-2021, 13:22')

                ],
              ),

              SizedBox(height: 20,),

              Table(
                children: [

                  TableRow(children:[
                    Row(
                      children: [
                        Text('Item', style: style),
                        SizedBox(width: 80,),
                        Text('Qty', style: style),
                        SizedBox(width: 18,),
                        Text('List Rate', style: style),
                        SizedBox(width: 13, ),
                        Text('Disc.', style: style),
                        SizedBox(width: 10,),
                        Text('Sale Rate', style: style),
                        SizedBox(width: 18,),
                        Text('Total', style: style),
                      ],
                    ),
                  ]),
                  TableRow(
                      children:[
                        Container(
                          width: width,
                          margin: EdgeInsets.only(top: 10),
                          child: Row(
                            children: [
                              Text('Ponds Fairness \nCrm 35G White \nBeauty D Sptle'),
                              SizedBox(width: 10, height: 10,),
                              Text('15'),
                              SizedBox(width: 23,height: 10,),
                              Text('370.00 '),
                              SizedBox(width: 23,height: 10,),
                              Text(''),
                              SizedBox(width: 45,height: 10,),
                              Text('370.00'),
                              SizedBox(width: 25,height: 10,),
                              Text('5,550.00'),

                            ],
                          ),
                        ),
                      ]),

                  TableRow(children:[
                    Container(
                      width: width,
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Text('Pantene \nShampoo 340ml'),
                          SizedBox(width: 10,),
                          Text('15'),
                          SizedBox(width: 23,),
                          Text('370.00 '),
                          SizedBox(width: 17,),
                          Text('10'),
                          SizedBox(width: 30,),
                          Text('370.00'),
                          SizedBox(width: 29,),
                          Text('5,550.00'),

                        ],
                      ),
                    ),
                  ]),

                  TableRow(children:[
                    Container(
                      width: width,
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Text('Yardley Edt \n100Ml Original'),
                          SizedBox(width: 20,),
                          Text('15'),
                          SizedBox(width: 23,),
                          Text('370.00 '),
                          SizedBox(width: 23,),
                          Text(''),
                          SizedBox(width: 45,),
                          Text('370.00'),
                          SizedBox(width: 25,),
                          Text('5,550.00'),

                        ],
                      ),
                    ),
                  ]
                  ),

                ],
              ),

              Table(
                children: [

                  TableRow(children:[
                    Container(
                      width: width,
                      margin: EdgeInsets.only(top: 60),
                      child: Row(
                        children: [
                          Text('Previous Outstanding'),
                          SizedBox(width: 10,),
                          Text('22,590.00'),
                          SizedBox(width: 10,),
                          Text('Total Discount '),
                          SizedBox(width: 10,),
                          Text('1,230.00'),
                        ],
                      ),
                    ),
                  ]
                  ),

                  TableRow(children:[
                    Container(
                      width: width,
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Text(''),
                          SizedBox(width: 190,),
                          Text(''),
                          SizedBox(width: 28,),
                          Text('Total Discount '),
                          SizedBox(width: 10,),
                          Text('1,230.00'),
                        ],
                      ),
                    ),
                  ]
                  ),

                  TableRow(children:[
                    Container(
                      width: width,
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Text(''),
                          SizedBox(width: 190,),
                          Text(''),
                          SizedBox(width: 28,),
                          Text('Total Discount '),
                          SizedBox(width: 10,),
                          Text('1,230.00'),
                        ],
                      ),
                    ),
                  ]
                  ),
                ],
              ),

              Row(
                children: [
                  Text('Payment Amount'),
                  Container(

                    margin: EdgeInsets.only(left: 10),
                    height: 30,
                    width: width/7,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.deepOrangeAccent)
                    ),
                    child: Center(
                      child: Text('4000'),
                    ),
                  )
                ],
              ),

              SizedBox(height: 20,),


              Column(
                children: <Widget>[
                  _myRadioButton(
                    title: "Cash",
                    value: 0,
                    onChanged: (newValue) => setState(() => _groupValue = newValue),
                  ),


                  TextField(
                    decoration: new InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.deepOrangeAccent),
                        ),

                        border: new OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.deepOrangeAccent),

                          borderRadius: const BorderRadius.all(
                            const Radius.circular(20.0),
                          ),
                        ),
                        filled: true,
                        labelText: 'Bank',
                        labelStyle: TextStyle(
                            color: Colors.black
                        ),
                        fillColor: Colors.white70),
                  ),
                  SizedBox(height: 5,),
                  TextField(
                    decoration: new InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.deepOrangeAccent),
                        ),

                        border: new OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.deepOrangeAccent),

                          borderRadius: const BorderRadius.all(
                            const Radius.circular(20.0),
                          ),
                        ),
                        filled: true,
                        labelText: 'Cheque number',
                        labelStyle: TextStyle(
                            color: Colors.black
                        ),
                        fillColor: Colors.white70),
                  ),
                  SizedBox(height: 5,),
                  TextField(
                    decoration: new InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.deepOrangeAccent),
                        ),

                        border: new OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.deepOrangeAccent),

                          borderRadius: const BorderRadius.all(
                            const Radius.circular(20.0),
                          ),
                        ),
                        filled: true,
                        labelText: 'Cheque date',
                        labelStyle: TextStyle(
                            color: Colors.black
                        ),
                        fillColor: Colors.white70),
                  ),

                  _myRadioButton(
                    title: "Cheque",
                    value: 1,
                    onChanged: (newValue) => setState(() => _groupValue = newValue),
                  ),

                  _myRadioButton(
                    title: "Credit",
                    value: 2,
                    onChanged: (newValue) => setState(() => _groupValue = newValue),
                  ),
                ],
              ),




              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: (){
                    },
                    child: Container(
                      height: 40,
                      width: 180,
                      child: Center(child: Text('Pay & Print', style: TextStyle(color: Colors.white),)),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.deepOrangeAccent
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                      HomeScreen()));
                    },
                    child: Container(
                      height: 40,
                      width: 180,
                      child: Center(child: Text('Pay & Close', style: TextStyle(color: Colors.white),)),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.deepOrangeAccent
                      ),
                    ),
                  ),
                ],
              ),



            ],
          ),
        ),
      ),
    );
  }


  Widget _myRadioButton({String title, int value, Function onChanged}) {
    return RadioListTile(
      value: value,
      groupValue: _groupValue,
      onChanged: onChanged,
      title: Text(title),
    );

}}

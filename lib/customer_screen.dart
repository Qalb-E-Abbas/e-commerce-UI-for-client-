import 'package:flutter/material.dart';

import 'constants.dart';

class CustomerScreen extends StatefulWidget {
  @override
  _CustomerScreenState createState() => _CustomerScreenState();
}

class _CustomerScreenState extends State<CustomerScreen> {
  @override
  Widget build(BuildContext context) {
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
            padding: const EdgeInsets.only(left:5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Search'),
                Padding(
                  padding: const EdgeInsets.only(bottom: 3.0),
                  child: IconButton(icon: Icon(Icons.search, color: Colors.deepOrangeAccent,
                  ),
                    onPressed: (){
                    },
                  ),
                )
              ],),
          ),

        ),
      ),
      drawer: Drawer(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            // first table
            Table(
              children: [

                TableRow(children:[
                  Row(
                    children: [
                      Text('Customer', style: style),
                      SizedBox(width: 56,),
                      Text('Phone', style: style),
                      SizedBox(width: 40,),
                      Text('Address', style: style),
                      SizedBox(width: 35, ),
                      Text('Total \nUnderstanding', style: style),
                    ],
                  ),
                ]),
                TableRow(
                    children:[
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Row(
                          children: [


                            Text('Customer 1'),
                            SizedBox(width: 20, height: 10,),
                            Text('0077945666'),
                            SizedBox(width: 20,height: 10,),
                            Text('23A, John St, \nNogegoda'),
                            SizedBox(width: 10,height: 10,),
                            Text('5500.00'),

                          ],
                        ),
                      ),
                    ]),

                TableRow(children:[
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [


                        Text('Customer 1'),
                        SizedBox(width: 20, height: 10,),
                        Text('0077945666'),
                        SizedBox(width: 20,height: 10,),
                        Text('23A, John St, \nNogegoda'),
                        SizedBox(width: 10,height: 10,),
                        Text('5500.00'),

                      ],
                    ),
                  ),
                ]),

                TableRow(children:[
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [


                        Text('Customer 1'),
                        SizedBox(width: 20, height: 10,),
                        Text('0077945666'),
                        SizedBox(width: 20,height: 10,),
                        Text('23A, John St, \nNogegoda'),
                        SizedBox(width: 10,height: 10,),
                        Text('5500.00'),
                      ],
                    ),
                  ),
                ]
                ),

              ],
            ),

          ],
        ),
      ),
    );
  }
}

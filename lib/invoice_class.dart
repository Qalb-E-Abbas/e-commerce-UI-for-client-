import 'package:flutter/material.dart';

import 'constants.dart';

class InvoiceClass extends StatefulWidget {
  @override
  _InvoiceClassState createState() => _InvoiceClassState();
}

class _InvoiceClassState extends State<InvoiceClass> {
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
                Text('Customer name'),
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
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            // first table
            Table(
              children: [

                TableRow(children:[
                  Row(
                    children: [
                      Text('Invoice', style: style),
                      SizedBox(width: 80,),
                      Text('Date', style: style),
                      SizedBox(width: 78,),
                      Text('Total', style: style),
                      SizedBox(width: 62, ),
                      Text('Paid Am.', style: style),
                    ],
                  ),
                ]),
                TableRow(
                    children:[
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Row(
                          children: [

                            Row(
                              children: [
                              Text('INV-0001'),

                              SizedBox(width: 2,),
                              Icon(Icons.monetization_on_rounded, color: Colors.deepOrangeAccent,)
                            ],),
                            SizedBox(width: 40, height: 10,),
                            Text('10-01-2021'),
                            SizedBox(width: 40,height: 10,),
                            Text('5500.00 '),
                            SizedBox(width: 40,height: 10,),
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

                        Row(children: [
                          Text('INV-0002'),

                          SizedBox(width: 2,),
                          Icon(Icons.monetization_on_rounded, color: Colors.deepOrangeAccent,)
                        ],),
                        SizedBox(width: 40, height: 10,),
                        Text('10-01-2021'),
                        SizedBox(width: 40,height: 10,),
                        Text('5500.00 '),
                        SizedBox(width: 40,height: 10,),
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

                        Row(children: [
                          Text('INV-0003',),

                          SizedBox(width: 2,),
                          Icon(Icons.money_off, color: Colors.deepOrangeAccent,)
                        ],),
                        SizedBox(width: 40, height: 10,),
                        Text('10-01-2021'),
                        SizedBox(width: 40,height: 10,),
                        Text('5500.00 '),
                        SizedBox(width: 40,height: 10,),
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


import 'package:flutter/material.dart';

import 'constants.dart';
import 'customer_screen.dart';
import 'invoice_class.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String dropdownValue = 'All categories';

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
          margin: EdgeInsets.only(top: 57, left: 50, right: 5.0),
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
                Text('Select customer'),
                Padding(
                  padding: const EdgeInsets.only(bottom: 3.0),
                  child: IconButton(icon: Icon(Icons.search, color: Colors.deepOrangeAccent,
                  ),
                  onPressed: (){

                    searchDialog();
                  },
                  ),
                )
              ],),
          ),

        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Container(
                margin: EdgeInsets.only(right: 150, top: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
            children: [

                Text('John Doe', style: TextStyle(
                  fontSize: 25
                ),),
                Text('LR-2270')

          ],
        ),
              ),
              decoration: BoxDecoration(
                color: Colors.deepOrangeAccent,
              ),
            ),
            ListTile(
              title: Text('Sales'),
              trailing: Icon(Icons.favorite_outlined),
              onTap: () {

                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>

                        HomeScreen(),
                ));

              },
            ),
            ListTile(
              title: Text('Invoices'),
              trailing: Icon(Icons.favorite_outlined),
              onTap: () {

                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>

                        InvoiceClass(),
                    ));

              },
            ),

            ListTile(
              title: Text('Items'),
              trailing: Icon(Icons.favorite_outlined),
              onTap: () {


              },
            ),

            ListTile(
              title: Text('Customer'),
              trailing: Icon(Icons.favorite_outlined),
              onTap: () {

                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>

                        CustomerScreen(),
                    ));

              },
            ),

            ListTile(
              title: Text('Messaging'),
              trailing: Icon(Icons.favorite_outlined),
              onTap: () {


              },
            ),

            ListTile(
              title: Text('Sync'),
              trailing: Icon(Icons.favorite_outlined),
              onTap: () {

                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>

                        InvoiceClass(),
                    ));

              },
            ),


            ListTile(
              title: Text('Sign Out'),
              trailing: Icon(Icons.close, color: Colors.red,),
              onTap: () {



              },
            ),

          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
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
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          GestureDetector(
                              onTap: (){

                                dialogForList();

                              },
                              child:

                          Container(child:
                          Text('Ponds Fairness \nCrm 35G White \nBeauty D Sptle'))),
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
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          GestureDetector(
                              onTap: (){

                                dialogForList();

                              },
                              child:

                              Container(child:
                              Text('Ponds Fairness \nCrm 35G White \nBeauty D Sptle'))),
                          SizedBox(width: 10,),
                          Text('15'),
                          SizedBox(width: 23,),
                          Text('370.00 '),
                          SizedBox(width: 26,),
                          Text('10'),
                          SizedBox(width: 25,),
                          Text('370.00'),
                          SizedBox(width: 25,),
                          Text('5,550.00'),

                        ],
                      ),
                    ),
                  ]),

                  TableRow(children:[
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          GestureDetector(
                              onTap: (){

                                dialogForList();

                              },
                              child:

                              Container(child:
                              Text('Ponds Fairness \nCrm 35G White \nBeauty D Sptle'))),
                          SizedBox(width: 10,),
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



              // second table

              Table(
                children: [

                  TableRow(children:[
                    Container(
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
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Text(''),
                          SizedBox(width: 190,),
                          Text(''),
                          SizedBox(width: 28,),
                          Text('Invoice Total'),
                          SizedBox(width: 21,),
                          Text('1,230.00'),
                        ],
                      ),
                    ),
                  ]
                  ),

                  TableRow(children:[
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Text(''),
                          SizedBox(width: 190,),
                          Text(''),
                          SizedBox(width: 28,),
                          Text('Total Payable '),
                          SizedBox(width: 15,),
                          Text('1,230.00'),
                        ],
                      ),
                    ),
                  ]
                  ),
                ],
              ),

              SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [


                  GestureDetector(
                    onTap: (){
                     addReturnsPopUp();
                    },
                    child: Container(
                      height: 40,
                      width: 180,
                      child: Center(child: Text('Add Returns', style: TextStyle(color: Colors.white),)),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.deepOrangeAccent
                      ),
                    ),
                  ),





                  Container(
                    height: 40,
                    width: 180,
                    child: Center(child: Text('Pay', style: TextStyle(color: Colors.white),)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.deepOrangeAccent
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal:5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Container(
                    height: 30,
                    width: 170,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.deepOrangeAccent)
                    ),
                    child: Center(
                      child: DropdownButton<String>(
                        value: dropdownValue,
                        icon: Icon(Icons.arrow_downward, color: Colors.deepOrangeAccent,),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(color: Colors.black),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue = newValue;
                          });
                        },
                        items: <String>['All categories', 'Two', 'Free', 'Four']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),

                    Container(
                      height: 30,
                      width: 170,
                      child: Center(child: Text('Search Item')),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.deepOrangeAccent)
                      ),
                    )
                ],),
              ),

              SizedBox(height: 20,),


              Container(
                height: 30,
                width: double.infinity,
                child: ListView.builder(
                    physics: ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 6,
                    itemBuilder:(BuildContext context, int index){
                      return   Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.deepOrangeAccent)
                        ),
                        child: Center(
                          child: Text('Brand 1 (15)'),
                        ),

                      );
                    }
                ),
              ),




              SizedBox(height: 20,),

              Row(
                children: [

                  Flexible(
                    child: Table(
                      children: [

                        TableRow(children:[
                          Row(
                            children: [
                              Text('Item', style: style),
                              SizedBox(width: 90,),
                              Text('List Rate', style: style),
                              SizedBox(width: 20,),
                              Text('Qty Available', style: style),
                              SizedBox(width: 20, ),
                              Text('Disc.', style: style),
                              SizedBox(width: 10,),
                              Text('', ),

                            ],
                          ),
                        ]),
                        TableRow(
                            children:[
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Row(
                                  children: [
                                    Text('Ponds Fairness \nCrm 35G White \nBeauty D Sptle'),
                                    SizedBox(width: 20, height: 10,),
                                    Text('15'),
                                    SizedBox(width: 58,height: 10,),
                                    Text('370.00 '),
                                    SizedBox(width: 60,height: 10,),
                                    Text('10'),
                                    SizedBox(width: 20,height: 10,),
                                    IconButton(icon: Icon(Icons.add, size: 18,), onPressed: (){}),


                                  ],
                                ),
                              ),
                            ]),

                        TableRow(children:[
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Row(
                              children: [
                                Text('Ponds Fairness \nCrm 35G White \nBeauty D Sptle'),
                                SizedBox(width: 20, height: 10,),
                                Text('15'),
                                SizedBox(width: 58,height: 10,),
                                Text('370.00 '),
                                SizedBox(width: 60,height: 10,),
                                Text('10'),
                                SizedBox(width: 20,height: 10,),
                                IconButton(icon: Icon(Icons.add, size: 18,), onPressed: (){}),

                              ],
                            ),
                          ),
                        ]),

                        TableRow(children:[
                          Container(
                            child: Row(
                              children: [
                                Text('abcdef'),
                                SizedBox(width: 78, height: 10,),
                                Text('15'),
                                SizedBox(width: 58,height: 10,),
                                Text('370.00 '),
                                SizedBox(width: 60,height: 10,),
                                Text('10'),
                                SizedBox(width: 20,height: 10,),
                                IconButton(icon: Icon(Icons.add, size: 18,), onPressed: (){}),

                              ],
                            ),
                          ),
                        ]
                        ),
                        TableRow(children:[
                          Container(
                            child: Row(
                              children: [
                                Text('abcdef'),
                                SizedBox(width: 78, height: 10,),
                                Text('15'),
                                SizedBox(width: 58,height: 10,),
                                Text('370.00 '),
                                SizedBox(width: 60,height: 10,),
                                Text('10'),
                                SizedBox(width: 20,height: 10,),
                                IconButton(icon: Icon(Icons.add, size: 18,), onPressed: (){}),


                              ],
                            ),
                          ),
                        ]
                        ),

                      ],
                    ),
                  ),


                ],
              )





            ],
          ),
        ),
      )
    );
  }

  addReturnsPopUp(){
    return  showDialog(context: context, builder: (context){
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Container(
          height: 400,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text('Search Previously Invoice Items'),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                  height: 22,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(color: Colors.deepOrangeAccent)
                  ),
                  width: 300,
                  child: Text('Search Item'),

                ),

                SizedBox(height: 30,),

                Expanded(
                  child: Table(
                    children: [

                      TableRow(children:[
                        Row(
                          children: [
                            Text('Item', style: style),
                            SizedBox(width: 90,),
                            Text('Sold Rate', style: style),
                            SizedBox(width: 20,),
                            Text('Qty Price', style: style),
                            SizedBox(width: 20, ),
                            Text('', ),

                          ],
                        ),
                      ]),
                      TableRow(
                          children:[
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Text('Ponds Fairness \nCrm 35G White \nBeauty D Sptle'),
                                  SizedBox(width: 20, height: 10,),
                                  Text('15'),
                                  SizedBox(width: 58,height: 10,),
                                  Text('370.00 '),
                                  SizedBox(width: 20, ),
                                  IconButton(icon: Icon(Icons.add, size: 18, color: Colors.deepOrangeAccent,),
                                      onPressed: (){
                                        dialog();
                                      }),


                                ],
                              ),
                            ),
                          ]),

                      TableRow(children:[
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Row(
                            children: [
                              Text('Ponds Fairness \nCrm 35G White \nBeauty D Sptle'),
                              SizedBox(width: 20, height: 10,),
                              Text('15'),
                              SizedBox(width: 58,height: 10,),
                              Text('370.00 '),
                              SizedBox(width: 20, ),
                              IconButton(icon: Icon(Icons.add, size: 18, color: Colors.deepOrangeAccent,),
                                  onPressed: (){
                                    dialog();
                                  }),

                            ],
                          ),
                        ),
                      ]),

                      TableRow(children:[
                        Container(
                          child: Row(
                            children: [
                              Text('abcdef'),
                              SizedBox(width: 78, height: 10,),
                              Text('15'),
                              SizedBox(width: 58,height: 10,),
                              Text('370.00 '),
                              SizedBox(width: 20, ),
                              IconButton(icon: Icon(Icons.add, size: 18, color: Colors.deepOrangeAccent,),
                                  onPressed: (){
                                    dialog();
                                  }),

                            ],
                          ),
                        ),
                      ]
                      ),
                      TableRow(children:[
                        Container(
                          child: Row(
                            children: [
                              Text('abcdef'),
                              SizedBox(width: 78, height: 10,),
                              Text('15'),
                              SizedBox(width: 58,height: 10,),
                              Text('370.00 '),
                              SizedBox(width: 20, ),
                              IconButton(icon: Icon(Icons.add, size: 18, color: Colors.deepOrangeAccent,),
                                  onPressed: (){
                                    dialog();
                                  }),


                            ],
                          ),
                        ),
                      ]
                      ),

                    ],
                  ),
                ),

              ],
            ),
          ),

        ),
      );
    }
    );
  }


  dialogForList(){

    return showDialog(context: context, builder: (context){

      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Container(
          height: 200,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.close),
                    Text('Ponds Fairness cream'),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                            HomeScreen()
                        ));
                      },
                      child: Container(
                        height: 30,
                        width: 56,
                        child: Center(child: Text('Save', style: TextStyle(color: Colors.white),)),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.deepOrangeAccent
                        ),
                      ),
                    ),

                  ],
                ),

                SizedBox(height: 20,),


                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Unit Price'),
                    Text('300'),


                  ],
                ),

                SizedBox(height: 10,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Selling Price'),
                    Text('320.00'),


                  ],
                ),

                SizedBox(height: 10,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Discount%'),
                    Text('300.00'),


                  ],
                ),

                SizedBox(height: 10,),


                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Quantity'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.remove, color: Colors.deepOrangeAccent,),
                      Text('10'),
                      Icon(Icons.add, color: Colors.deepOrangeAccent,),
                    ],
                  )


                  ],
                ),



              ],
            ),
          ),
        ),
      );
    });
  }


   dialog(){

    return showDialog(context: context, builder: (context){
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Container(
          height: 400,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text('Add good and damaged quantities', style: style,),
                SizedBox(height: 30,),

                Column(
                  children: [

                        Text('Good Quantity', style: TextStyle(
                          fontSize: 18, color: Colors.black
                        ),),
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
                                fillColor: Colors.white70),
                          ),

                    SizedBox(height: 20,),

                    Text('Damaged Quantity', style: TextStyle(
                        fontSize:18, color: Colors.black
                    ),),
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
                          fillColor: Colors.white70),
                    ),

                    SizedBox(height: 30,),


                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                        HomeScreen()
                        ));
                      },
                      child: Container(
                        height: 40,
                        width: 180,
                        child: Center(child: Text('Save', style: TextStyle(color: Colors.white),)),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.deepOrangeAccent
                        ),
                      ),
                    ),


                  ],
                )

              ],
            ),
          ),

        ),
      );
    }
    );

  }



  searchDialog(){

    return showDialog(context: context, builder: (context){
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Container(
          height: 400,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text('Add customer to the invoice', style: style,),
                SizedBox(height: 30,),

                Column(
                  children: [

                    TextField(
                      decoration: new InputDecoration(
                        hintText: 'Search',
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
                          fillColor: Colors.white70),
                    ),

                    SizedBox(height: 20,),

                    GestureDetector(
                      onTap: (){
                        addCustomerDialog();
                      },
                      child: Container(
                        height: 40,
                        width: 180,
                        child: Center(child: Text('Add new customer', style: TextStyle(color: Colors.white),)),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.deepOrangeAccent
                        ),
                      ),
                    ),

                    SizedBox(height: 10,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Outstanding')
                      ],
                    ),

                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.deepOrangeAccent,
                      ),

                      title: Text('Customer 1'),
                      subtitle: Text('007, customer@gmail.com'),
                      trailing: Text('14647'),
                    )


                  ],
                )

              ],
            ),
          ),

        ),
      );
    }
    );

  }


  addCustomerDialog(){

    return showDialog(context: context, builder: (context){
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Container(
          height: 400,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text('Create customer', style: style,),
                SizedBox(height: 30,),

                Column(
                  children: [

             TextField(
                      decoration: InputDecoration(
                        hintText: 'Name',
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.deepOrangeAccent),
                        ),
                      ),
                    ),


                    Row(
                      children: [

                        Flexible(child:  TextField(
                          decoration: InputDecoration(
                              hintText: 'First Name',
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.deepOrangeAccent),
                            ),
                          ),
                        ),
                          ),
                        SizedBox(width: 2,),
                        Flexible(child:  TextField(
                          decoration: InputDecoration(
                              hintText: 'Last Name',
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.deepOrangeAccent),
                            ),
                          ),
                        ),
                        ),


                      ],
                    ),

                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Mobile',
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.deepOrangeAccent),
                        ),
                      ),
                    ),

                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Address',
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.deepOrangeAccent),
                        ),
                      ),
                    ),

                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Notes',
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.deepOrangeAccent),
                        ),
                      ),
                    ),

                    SizedBox(height: 20,),

                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 40,
                        width: 180,
                        child: Center(child: Text('Save', style: TextStyle(color: Colors.white),)),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.deepOrangeAccent
                        ),
                      ),
                    ),


                  ],
                )

              ],
            ),
          ),

        ),
      );
    }
    );

  }



}


import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {


  bool _passwordVisible;

  @override
  void initState() {
    _passwordVisible = false;
  }



  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    double text = MediaQuery.textScaleFactorOf(context);

    return Scaffold(

      body:  Container(
        margin: EdgeInsets.only(top: 80),

        child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
          child: Column(
              children: [
                Row(
                  children: [

                    Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Icon(Icons.arrow_back_ios, color: Colors.grey[500],)),
                    Container(
                        margin: EdgeInsets.only(left: 120),
                        child: Text('Login', style: TextStyle(
                          color: Colors.grey[500], fontSize: 25
                        ),))

                  ],
                ),

                Container(
                  margin: EdgeInsets.only(top: 70.0),
                  child: Column(
                    children: [


                      Text('Login', style: TextStyle(
                        color: Colors.black87, fontSize: 30,
                        fontWeight: FontWeight.bold
                      ),),
                      Text('Complete your all details',
                          style: TextStyle(
                              color: Colors.grey[500], fontSize: 20,
                          )
                      ),

                    ],
                  ),
                ),

                SizedBox(height: 40.0,),

                   Container(
                    padding: EdgeInsets.all(30.0),
                    child: Column(
                      children: [


                        Row(
                          children: [
                            Flexible(child:  TextField(
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
                                  labelText: 'ERP Instance',
                                  labelStyle: TextStyle(
                                      color: Colors.black
                                  ),
                                  fillColor: Colors.white70),
                            ), ),



                            Text('.abcerp.com', style: TextStyle(
                              fontSize: 18
                            ),),

                          ],
                        ),


                        SizedBox(height: 30,),

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
                              labelText: 'Enter Email',
                              labelStyle: TextStyle(
                                  color: Colors.black
                              ),
                              fillColor: Colors.white70),
                        ),

                        SizedBox(height: 30),

                        TextFormField(
                          keyboardType: TextInputType.text,
                          obscureText: !_passwordVisible,//This will obscure text dynamically
                          decoration: InputDecoration(
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
                            fillColor: Colors.white70,
                            labelText: 'Enter Password',
                            labelStyle: TextStyle(
                                color: Colors.black
                            ),
                            // Here is key idea
                            suffixIcon: IconButton(
                              icon: Icon(
                                // Based on passwordVisible state choose the icon
                                _passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Theme.of(context).primaryColorDark,
                              ),
                              onPressed: () {
                                // Update the state i.e. toogle the state of passwordVisible variable
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              },
                            ),
                          ),
                        ),

                        SizedBox(height: 30.0,),

                        Container(
                            height: 40,
                            width: double.infinity,
                            child: Center(child: Text('Login', style: TextStyle(color: Colors.white),)),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.deepOrangeAccent
                            ),
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
}

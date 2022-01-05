import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login/main.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}
String? dropDownFirstValue;
final List<String> _dropdownValues = [
  "+91",
  "+001",
  "+90",
  "+20",
  "+40"
];
String ? dropdownsecondvalue;
final List<String> _dropdownValues1 = [
  "male",
  "female",
  "other"
];
//bool valuefirst = false;
//bool valuesecond = false;  //The list of values we want on the dropdown
bool _value = false;
class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              color: Colors.indigo),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: ListView(
          children: <Widget>[
            Image.asset("assets/images/3.jpg", height: 100, width: 300),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(10),
              child: Text(
                "Sign Up",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Row(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5.0, right: 20.0),
                        height: 50,
                        width: 160,
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 5.0),
                            //icon: Icon(Icons.account_box,size: 50,),
                            //border: OutlineInputBorder(
                            // borderRadius: BorderRadius.all(Radius.circular(20),)
                            //),
                            labelText: "First Name",
                            hintStyle: TextStyle(color: Colors.indigo),
                            hintText: "Enter First Name",
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 50,
                        width: 160,
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 5.0),
                            //icon: Icon(Icons.vpn_key_outlined,size: 50,),
                            //border: OutlineInputBorder(
                            //borderRadius: BorderRadius.all(Radius.circular(20))
                            //),
                            labelText: "Last Name",
                            hintText: "Enter Last Name",
                            hintStyle: TextStyle(color: Colors.indigo),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 5.0),
                    height: 50,
                    width: 350,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 5.0),
                        //icon: Icon(Icons.vpn_key_outlined,size: 50,),
                        //border: OutlineInputBorder(
                        //borderRadius: BorderRadius.all(Radius.circular(20))
                        //),
                        labelText: " Email Address",
                        hintText: "Enter email address",
                        hintStyle: TextStyle(color: Colors.indigo),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5.0),
                        height: 50,
                        width: 80,
                        child: DropdownButton(
                          items: _dropdownValues
                              .map((value) => DropdownMenuItem(
                                    child: Text(value),
                                    value: value,
                                  ))
                              .toList(),
                          onChanged: (value) {
                            setState(() {
                              dropDownFirstValue = value.toString();
                            });
                          },
                          isExpanded: false,
                          value: dropDownFirstValue,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 50,
                        width: 220,
                        margin: EdgeInsets.only(left: 50.0),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 5.0),
                            //icon: Icon(Icons.vpn_key_outlined,size: 50,),
                            //border: OutlineInputBorder(
                            //borderRadius: BorderRadius.all(Radius.circular(20))
                            //),
                            labelText: "phone Number",
                            hintText: "Enter phone number",
                            hintStyle: TextStyle(color: Colors.indigo),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 5.0),
                    height: 50,
                    width: 350,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 5.0),
                        //icon: Icon(Icons.vpn_key_outlined,size: 50,),
                        //border: OutlineInputBorder(
                        //borderRadius: BorderRadius.all(Radius.circular(20))
                        //),
                        labelText: "Username",
                        hintText: "Choose a username",
                        hintStyle: TextStyle(color: Colors.indigo),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5.0),
                        height: 50,
                        width: 80,
                        child: DropdownButton(
                          items: _dropdownValues1
                              .map((value) => DropdownMenuItem(
                            child: Text(value),
                            value: value,
                          ))
                              .toList(),
                          onChanged: (value) {
                            setState(() {
                              dropdownsecondvalue=value.toString();
                            });
                          },
                          isExpanded: false,
                          value:dropdownsecondvalue,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 50,
                        width: 220,
                        margin: EdgeInsets.only(left: 50.0),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 5.0),
                            //icon: Icon(Icons.vpn_key_outlined,size: 50,),
                            //border: OutlineInputBorder(
                            //borderRadius: BorderRadius.all(Radius.circular(20))
                            //),
                            labelText: "Date of Birth",
                            hintText: "dd/mm/yyy",
                            hintStyle: TextStyle(color: Colors.indigo),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 5.0),
                    height: 50,
                    width: 350,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 5.0),
                        //icon: Icon(Icons.vpn_key_outlined,size: 50,),
                        //border: OutlineInputBorder(
                        //borderRadius: BorderRadius.all(Radius.circular(20))
                        //),
                        labelText: "Create Password",
                        hintText: "Enter password",
                        hintStyle: TextStyle(color: Colors.indigo),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 5.0),
                    height: 50,
                    width: 350,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 5.0),
                        //icon: Icon(Icons.vpn_key_outlined,size: 50,),
                        //border: OutlineInputBorder(
                        //borderRadius: BorderRadius.all(Radius.circular(20))
                        //),
                        labelText: "Re-enter Password",
                        hintText: "Re-enter password",
                        hintStyle: TextStyle(color: Colors.indigo),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Container(
              child: Row(

                children: [

                  Container(
                    // height: 50,
                    //width: 350,
                    child: Checkbox(
                      value: _value,
                      onChanged: (bool? value){
                          setState(() {
                            _value =  value!;
                          });
                      },
                    ),
                  ),
                  Text('I agree with terms & conditions ',style: TextStyle(fontSize: 17.0,
                      color:Colors.indigo,
                      fontWeight: FontWeight.bold), ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                      height: 50,
                      width: 350,
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: RaisedButton(
                        textColor: Colors.white,
                        color: Colors.indigo,
                        child: Text('Sign up'),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyApp(),));
                        },
                      )
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("OR")
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Card(
                    margin:EdgeInsets.all(10),
                    child:InkWell(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(FontAwesomeIcons.google,size: 40,),
                        ],
                      ),

                    ),
                  ),

                  Card(
                    child:InkWell(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(FontAwesomeIcons.instagram,size: 40,),
                        ],
                      ),

                    ),
                  ),

                  Card(
                    child:InkWell(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(FontAwesomeIcons.facebook,size: 40,),
                        ],
                      ),

                    ),
                  ),

                  Card(
                    child:InkWell(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(FontAwesomeIcons.twitter,size: 40,),
                        ],
                      ),

                    ),
                  ),
                  Card(
                    child:InkWell(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(FontAwesomeIcons.youtube,size: 40,),
                        ],
                      ),

                    ),
                  ),
                ],
              ),
            )


          ],
        ),
      ), /**/
    );
  }
}

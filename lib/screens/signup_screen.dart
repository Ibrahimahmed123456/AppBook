import 'package:flutter/material.dart';
import '../constant';

class SignupScreen extends StatefulWidget {
  static const routeName = '/signup';
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(kpagespacing),
          color: Colors.white,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Username'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'First Name'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Last Name'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
              ),
              Container(
                child: GestureDetector(
                    child: new Icon(Icons.calendar_today),
                    onTap: ()async{
                      final datePick= await showDatePicker(
                          context: context,
                          initialDate: new DateTime(1980),
                          firstDate: new DateTime(1900),
                          lastDate: new DateTime(2100)
                      );
//                    if(datePick!=null && datePick!=birthDate){
//                      setState(() {
//                        birthDate=datePick;
//                        isDateSelected=true;
//
//                        // put it here
//                        birthDateInString = "${birthDate.month}/${birthDate.day}/${birthDate.year}"; // 08/14/2019
//
//                      });
//                    }
                    }
                ),
              ),
              RaisedButton(
                child:
                Text('Sign up'),
                onPressed: null,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                padding:
                EdgeInsets.symmetric(horizontal: 91.0, vertical: 8.0),
                color:Color(0xff4a65dc),
                textColor:Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class OtpBody extends StatelessWidget {
  const OtpBody({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50,),
              Text("Confirm OTP", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
              SizedBox(height: 10,),
              Text("Enter OTP we just sent to your phone\n number",textAlign: TextAlign.center, style: TextStyle(color: Colors.grey, fontSize: 15)),
              SizedBox(height: 10,),
              Container(
                width: 300,
                child: Row(
                  children: [
                    for(var i = 0 ; i < 6; i++ )
                      OTPInput()
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: 200,
                child: Row(
                  children: [
                    Text("Time remaining" , style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                    SizedBox(width: 10,),
                    GestureDetector(
                        child: Text("Resend", style: TextStyle(decoration: TextDecoration.underline,fontSize: 12, color: Colors.pinkAccent)),
                        onTap: () {
                          // do what you need to do when "Click here" gets clicked
                        }
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class OTPInput extends StatelessWidget {
  const OTPInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: Material(
        elevation: 5,
        child: Container(
          width: 40,
          child: TextFormField(
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
            decoration: InputDecoration(
                border: OutlineInputBorder(),
            ),
          ),
        ),
      ),
    );
  }
}

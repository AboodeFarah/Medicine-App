import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:medicineapp/screens/auth/signup.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "sign in",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade900,
                ),
              ),
            ),
            SizedBox(height: 30,),

            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email, color: Colors.blue.shade900),
                border: InputBorder.none,
                hintText: "Email",
              ),
            ),
            TextFormField(
              obscureText: isPassword,
              decoration: InputDecoration(
                hintText: "Password",
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isPassword = !isPassword;
                    });
                  },
                  icon: Icon(Icons.visibility),
                ),
                prefixIcon: Icon(Icons.password, color: Colors.blue.shade600),
                border: InputBorder.none,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text("forget password",style: TextStyle(color: Colors.blue.shade600,fontSize: 18),)
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade900,
                  minimumSize: Size(double.infinity, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  )
                ),
                onPressed: (){}, child: Text("Sign in",style: TextStyle(color: Colors.white,fontSize: 24),)),

                Row(
                  spacing: 10,
                  children: [
                    Expanded(child: Divider(thickness: 1,)),
                    Text("or",style: TextStyle(fontSize: 18),),
                    Expanded(child: Divider(thickness: 1,))

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 40,
                  children: [
                    Image.asset("assets/twitter.png",height: 35,),
                    Image.asset("assets/facebook.png",height: 35,),
                    Image.asset("assets/google.png",height: 35,)
                  ],
                ),
                RichText(text: TextSpan(
                  style: TextStyle(color: Colors.grey.shade900,fontSize: 18),
                  text: "Don't have account?",
                  children: [
                    TextSpan(
                      style: TextStyle(color: Colors.blue.shade600,fontSize: 18),
                      text: "sign up",
                      recognizer: TapGestureRecognizer()..onTap = (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> signup()));
                      },
                    )
                  ]
                ))
          ],
        ),
      ),
    );
  }
}

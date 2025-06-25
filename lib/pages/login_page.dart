import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
    const LoginPage({super.key});

    @override
    State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
    @override
    Widget build(BuildContext context) {
        final double deviceWidth = MediaQuery.of(context).size.width;
        final double deviceHeight = MediaQuery.of(context).size.height;

        return Scaffold(
            body: Container(
                width: deviceWidth,
                height: deviceHeight,

                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                            Color(0xff7c71b2),
                            Color(0xffc8bbdc),
                            Color(0xffe1d8eb),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                    ),
                ),

                //* Login Container
                child: Stack(
                    children: [
                        // Go Back
                        GestureDetector(
                            onTap: () {
                                Navigator.pop(context);
                            },

                            child: Container(
                                margin: EdgeInsets.only(left: deviceWidth*0.05, top: deviceHeight*0.05),
                                child: Row(
                                    children: [
                                        Icon(Icons.arrow_back_ios, color: Colors.white,),
                                        SizedBox(width: deviceWidth*0.02),
                                        Text(
                                            'Back',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: deviceWidth*0.06
                                            ),
                                        ),
                                    ],
                                ),
                            ),
                        ),

                        // whole white portion of login design
                        Container(
                            width: deviceWidth,
                            height: deviceHeight,
                            margin: EdgeInsets.only(top: deviceHeight/6),
                            padding: EdgeInsets.only(left: deviceWidth*0.05, right: deviceWidth*0.05, top: deviceHeight*0.025),
                        
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)),
                            ),

                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    // Login Label
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                            Text(
                                                'Login',
                                                style: TextStyle(
                                                    fontSize: deviceWidth*0.1,
                                                    color: Color(0xffa193c6),
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'Lora',
                                                ),
                                            ),
                                        ],
                                    ),

                                    SizedBox(height: deviceHeight*0.02),

                                    //* Username
                                    Container(
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                                Text(
                                                    'Username',
                                                    style: TextStyle(
                                                        fontSize: deviceWidth*0.06,
                                                        color: Color(0xffa193c6),
                                                        fontWeight: FontWeight.w500
                                                    ),
                                                ),

                                                SizedBox(height: deviceHeight*0.02),

                                                Container(
                                                    margin: EdgeInsets.symmetric(horizontal: deviceWidth*0.01),

                                                    decoration: BoxDecoration(
                                                        border: Border.all(color: Color(0xff7c71b2)),
                                                        borderRadius: BorderRadius.circular(8),
                                                    ),

                                                    child: TextField(
                                                        style: TextStyle(color: Colors.black54, fontSize: 18),

                                                        decoration: InputDecoration(
                                                            contentPadding: EdgeInsets.symmetric(
                                                                horizontal: deviceWidth*0.045,
                                                                vertical: deviceHeight*0.01,
                                                            ),

                                                            hintText: 'Enter Username',
                                                            hintStyle: TextStyle(
                                                                color: Colors.grey.shade400,
                                                                fontSize: deviceWidth*0.05,
                                                                fontWeight: FontWeight.w500
                                                            ),

                                                            // Thick border when not focused
                                                            enabledBorder: OutlineInputBorder(
                                                                borderRadius: BorderRadius.circular(8),
                                                                borderSide: const BorderSide(
                                                                    color: Color(0xffc8bbdc), // Border color
                                                                    width: 1.5, // Border thickness
                                                                ),
                                                            ),

                                                            // Thick border when focused (clicked)
                                                            focusedBorder: OutlineInputBorder(
                                                            borderRadius: BorderRadius.circular(8),
                                                            borderSide: const BorderSide(
                                                                color: Color(0xff7c71b2), // Highlighted border
                                                                width: 2.5,
                                                            ),),
                                                        ),
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),

                                    SizedBox(height: deviceHeight*0.03),

                                    //* Password
                                    Container(
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                                Text(
                                                    'Password',
                                                    style: TextStyle(
                                                        fontSize: deviceWidth*0.06,
                                                        color: Color(0xffa193c6),
                                                        fontWeight: FontWeight.w500
                                                    ),
                                                ),

                                                SizedBox(height: deviceHeight*0.02),

                                                Container(
                                                    margin: EdgeInsets.symmetric(horizontal: deviceWidth*0.01),

                                                    decoration: BoxDecoration(
                                                        border: Border.all(color: Color(0xff7c71b2)),
                                                        borderRadius: BorderRadius.circular(8),
                                                    ),

                                                    child: TextField(
                                                        style: TextStyle(color: Colors.black54, fontSize: 18),
                                                        obscureText: true,
                                                        obscuringCharacter: '●',
                                                        enableSuggestions: false,
                                                        autocorrect: false,
                                                        keyboardType: TextInputType.visiblePassword,

                                                        decoration: InputDecoration(
                                                            contentPadding: EdgeInsets.symmetric(
                                                                horizontal: deviceWidth*0.045,
                                                                vertical: deviceHeight*0.01,
                                                            ),

                                                            hintText: 'Enter Password',
                                                            hintStyle: TextStyle(
                                                                color: Colors.grey.shade400,
                                                                fontSize: deviceWidth*0.05,
                                                                fontWeight: FontWeight.w500
                                                            ),

                                                            // Thick border when not focused
                                                            enabledBorder: OutlineInputBorder(
                                                                borderRadius: BorderRadius.circular(8),
                                                                borderSide: const BorderSide(
                                                                    color: Color(0xffc8bbdc), // Border color
                                                                    width: 1.5, // Border thickness
                                                                ),
                                                            ),

                                                            // Thick border when focused (clicked)
                                                            focusedBorder: OutlineInputBorder(
                                                            borderRadius: BorderRadius.circular(8),
                                                            borderSide: const BorderSide(
                                                                color: Color(0xff7c71b2), // Highlighted border
                                                                width: 2.5,
                                                            ),),
                                                        ),
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),
                                    
                                    SizedBox(height: deviceHeight*0.02),
                                    
                                    //* Forgot Password
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.end,

                                        children: [
                                            Text(
                                                'Forgot Password?',
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    fontSize: deviceWidth*0.042,
                                                ),
                                            ),
                                        ],
                                    ),
                                    SizedBox(height: deviceHeight*0.02),

                                    //* Sign In button
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                            GestureDetector(
                                                onTap: () {},
                                            
                                                child: Material(
                                                    elevation: 3,
                                                    borderRadius: BorderRadius.circular(25),
                                                    
                                                    child: Container(
                                                        width: deviceWidth*0.88,
                                                        padding: EdgeInsets.symmetric(horizontal: deviceWidth*0.25, vertical: deviceHeight*0.01),
                                                        
                                                        decoration: BoxDecoration(
                                                            color: Color(0xffa193c6),
                                                            borderRadius: BorderRadius.circular(10),
                                                        ),
                                                        
                                                        child: Align(
                                                            alignment: Alignment.center,
                                                            child: Text(
                                                                'Sign In',
                                                                style: TextStyle(
                                                                    color: Colors.white,
                                                                    fontSize: deviceHeight*0.03,
                                                                    fontWeight: FontWeight.bold,
                                                                ),
                                                            ),
                                                        ),
                                                    ),
                                                ),
                                            ),
                                        ],
                                    ),

                                    SizedBox(height: deviceHeight*0.02),
                                    
                                    //* Or Label
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.center,

                                        children: [
                                            Text(
                                                'Or',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: deviceWidth*0.042,
                                                    fontWeight: FontWeight.w500
                                                ),
                                            ),
                                        ],
                                    ),

                                    SizedBox(height: deviceHeight*0.02),

                                    //* Sign In With Google
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                            GestureDetector(
                                                onTap: () {},
                                            
                                                child: Material(
                                                    elevation: 3,
                                                    borderRadius: BorderRadius.circular(25),
                                                    
                                                    child: Container(
                                                        width: deviceWidth*0.88,
                                                        padding: EdgeInsets.symmetric(vertical: deviceHeight*0.01),
                                                        
                                                        decoration: BoxDecoration(
                                                            color: Color(0xffa193c6),
                                                            borderRadius: BorderRadius.circular(10),
                                                        ),
                                                        
                                                        child: Align(
                                                            alignment: Alignment.center,
                                                            child: Row(
                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                children: [
                                                                    Image.asset(
                                                                        'asset/images/google.png',
                                                                        width: deviceWidth*0.08,
                                                                        color: Colors.white,
                                                                    ),

                                                                    SizedBox(width: deviceWidth*0.03),

                                                                    Text(
                                                                        'Sign In with Google',
                                                                        style: TextStyle(
                                                                            color: Colors.white,
                                                                            fontSize: deviceHeight*0.03,
                                                                            fontWeight: FontWeight.bold,
                                                                        ),
                                                                    ),
                                                                ],
                                                            ),
                                                        ),
                                                    ),
                                                ),
                                            ),
                                        ],
                                    ),

                                    SizedBox(height: deviceHeight*0.02),
                                ],
                            ),
                        ),
                    ],
                ),
            ),
        );
    }
}

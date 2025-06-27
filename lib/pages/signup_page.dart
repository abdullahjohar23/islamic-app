import 'package:flutter/material.dart';
import 'package:islamic_app/pages/login_page.dart';

class SignupPage extends StatefulWidget {
    const SignupPage({super.key});

    @override
    State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
    bool _obscureText = true; // for password field
    bool _obscureTextConfirm = true; // for confirm password field
    
    @override
    Widget build(BuildContext context) {
        final double deviceWidth = MediaQuery.of(context).size.width;
        final double deviceHeight = MediaQuery.of(context).size.height;

        return Scaffold(
            resizeToAvoidBottomInset: false, // Disable Flutter's auto handling
            // resizeToAvoidBottomInset: true, // this tells the layout to move up when keyboard appears, Let Flutter handle keyboard (may fail on password fields)
            
            body: Container(
                //* bg design
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
                                        Icon(
                                            Icons.arrow_back_ios,
                                            color: Colors.white,
                                            size: deviceWidth*0.07,
                                        ),
                                        
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

                        // whole white portion of signup design
                        Container(
                            padding: EdgeInsets.only(left: deviceWidth*0.05, right: deviceWidth*0.05, top: deviceHeight*0.025),
                            margin: EdgeInsets.only(top: deviceHeight * 0.15), // Adjust this value as needed
                            constraints: BoxConstraints(
                                minHeight: deviceHeight * 0.85, // Ensures it stretches to bottom
                            ),

                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)),
                            ),

                            child: SingleChildScrollView(
                                padding: EdgeInsets.only(
                                    bottom: MediaQuery.of(context).viewInsets.bottom + 20,
                                ),
                                
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        //* Signup Label
                                        Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                                Text(
                                                    'Sign Up',
                                                    style: TextStyle(
                                                        fontSize: deviceWidth*0.07,
                                                        color: Color(0xffa193c6),
                                                        fontWeight: FontWeight.bold,
                                                        fontFamily: 'Lora',
                                                    ),
                                                ),
                                            ],
                                        ),
                                
                                        SizedBox(height: deviceHeight*0.02),
                                
                                        //* Name
                                        Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                                Container(
                                                    margin: EdgeInsets.symmetric(horizontal: deviceWidth*0.01),
                                
                                                    decoration: BoxDecoration(
                                                        border: Border.all(color: Color(0xff7c71b2)),
                                                        borderRadius: BorderRadius.circular(8),
                                                    ),
                                        
                                                    child: TextField(
                                                        textInputAction: TextInputAction.next,

                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: deviceWidth*0.047,
                                                            fontWeight: FontWeight.w400
                                                        ),
                                        
                                                        decoration: InputDecoration(
                                                            contentPadding: EdgeInsets.symmetric(
                                                                horizontal: deviceWidth*0.045,
                                                                vertical: deviceHeight*0.01,
                                                            ),
                                        
                                                            hintText: 'Enter Your Name',
                                                            
                                                            hintStyle: TextStyle(
                                                                color: Colors.grey.shade400,
                                                                fontSize: deviceWidth*0.047,
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
                                                                ),
                                                            ),
                                                        ),
                                                    ),
                                                ),
                                            ],
                                        ),
                                
                                        SizedBox(height: deviceHeight*0.02),
                                        
                                        //* Gmail
                                        Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                                Container(
                                                    margin: EdgeInsets.symmetric(horizontal: deviceWidth*0.01),
                                
                                                    decoration: BoxDecoration(
                                                        border: Border.all(color: Color(0xff7c71b2)),
                                                        borderRadius: BorderRadius.circular(8),
                                                    ),
                                        
                                                    child: TextField(
                                                        textInputAction: TextInputAction.next,

                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: deviceWidth*0.047,
                                                            fontWeight: FontWeight.w400
                                                        ),
                                        
                                                        decoration: InputDecoration(
                                                            contentPadding: EdgeInsets.symmetric(
                                                                horizontal: deviceWidth*0.045,
                                                                vertical: deviceHeight*0.01,
                                                            ),
                                        
                                                            hintText: 'Enter Gmail',
                                                            
                                                            hintStyle: TextStyle(
                                                                color: Colors.grey.shade400,
                                                                fontSize: deviceWidth*0.047,
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
                                                                ),
                                                            ),
                                                        ),
                                                    ),
                                                ),
                                            ],
                                        ),
                                
                                        SizedBox(height: deviceHeight*0.02),
                                
                                        //* Username
                                        Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                                Container(
                                                    margin: EdgeInsets.symmetric(horizontal: deviceWidth*0.01),
                                        
                                                    decoration: BoxDecoration(
                                                        border: Border.all(color: Color(0xff7c71b2)),
                                                        borderRadius: BorderRadius.circular(8),
                                                    ),
                                        
                                                    child: TextField(
                                                        textInputAction: TextInputAction.next,

                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: deviceWidth*0.047,
                                                            fontWeight: FontWeight.w400
                                                        ),
                                        
                                                        decoration: InputDecoration(
                                                            contentPadding: EdgeInsets.symmetric(
                                                                horizontal: deviceWidth*0.045,
                                                                vertical: deviceHeight*0.01,
                                                            ),
                                        
                                                            hintText: 'Enter Username',
                                                            
                                                            hintStyle: TextStyle(
                                                                color: Colors.grey.shade400,
                                                                fontSize: deviceWidth*0.047,
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
                                                                ),
                                                            ),
                                                        ),
                                                    ),
                                                ),
                                            ],
                                        ),
                                
                                        SizedBox(height: deviceHeight*0.02),
                                
                                        //* Password
                                        Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                                Container(
                                                    margin: EdgeInsets.symmetric(horizontal: deviceWidth*0.01),
                                        
                                                    decoration: BoxDecoration(
                                                        border: Border.all(color: Color(0xff7c71b2)),
                                                        borderRadius: BorderRadius.circular(8),
                                                    ),
                                        
                                                    child: TextField(
                                                        obscureText: _obscureText, // Hides text
                                                        keyboardType: TextInputType.emailAddress, // Doesn't trigger secure keyboard in device
                                                        textCapitalization: TextCapitalization.none, // Prevents auto-capitalization
                                                        obscuringCharacter: '●', // Custom bullet. You can also use: *, • etc
                                                        enableSuggestions: false, // Disables suggestions
                                                        autocorrect: false, // Disables autocorrect
                                                        textInputAction: TextInputAction.next,
                                        
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: deviceWidth*0.047,
                                                            fontWeight: FontWeight.w400,
                                                            letterSpacing: 1.5 // Improves readability
                                                        ),
                                                        
                                                        decoration: InputDecoration(
                                                            contentPadding: EdgeInsets.symmetric(
                                                                horizontal: deviceWidth*0.045,
                                                                vertical: deviceHeight*0.01,
                                                            ),
                                        
                                                            hintText: 'Enter Password',
                                                            hintStyle: TextStyle(
                                                                color: Colors.grey.shade400,
                                                                fontSize: deviceWidth*0.047,
                                                                fontWeight: FontWeight.w500
                                                            ),
                                        
                                                            // hide or unhide the password - Toggle visibility
                                                            suffixIcon: IconButton(
                                                                icon: Icon(
                                                                    _obscureText ? Icons.visibility_off : Icons.visibility,
                                                                    color: const Color(0xff7c71b2),
                                                                ),
                                                                onPressed: () {
                                                                    setState(() {
                                                                        _obscureText = !_obscureText;
                                                                    });
                                                                },
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
                                                                ),
                                                            ),
                                                        ),
                                                    ),
                                                ),
                                            ],
                                        ),
                                        
                                        SizedBox(height: deviceHeight*0.02),
                                
                                        //* Confirm Password
                                        Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                                Container(
                                                    margin: EdgeInsets.symmetric(horizontal: deviceWidth*0.01),
                                        
                                                    decoration: BoxDecoration(
                                                        border: Border.all(color: Color(0xff7c71b2)),
                                                        borderRadius: BorderRadius.circular(8),
                                                    ),
                                        
                                                    child: TextField(
                                                        obscureText: _obscureTextConfirm, // Hides text
                                                        keyboardType: TextInputType.emailAddress, // Doesn't trigger secure keyboard in you device
                                                        textCapitalization: TextCapitalization.none, // Prevents auto-capitalization
                                                        obscuringCharacter: '●', // Custom bullet. You can also use: *, • etc
                                                        enableSuggestions: false, // Disables suggestions
                                                        autocorrect: false, // Disables autocorrect
                                                        textInputAction: TextInputAction.next,
                                        
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: deviceWidth*0.047,
                                                            fontWeight: FontWeight.w400,
                                                            letterSpacing: 1.5 // Improves readability
                                                        ),
                                                        
                                                        decoration: InputDecoration(
                                                            contentPadding: EdgeInsets.symmetric(
                                                                horizontal: deviceWidth*0.045,
                                                                vertical: deviceHeight*0.01,
                                                            ),
                                        
                                                            hintText: 'Confirm Password',
                                                            hintStyle: TextStyle(
                                                                color: Colors.grey.shade400,
                                                                fontSize: deviceWidth*0.047,
                                                                fontWeight: FontWeight.w500
                                                            ),
                                        
                                                            // hide or unhide the password
                                                            suffixIcon: IconButton(
                                                                icon: Icon(
                                                                    _obscureTextConfirm ? Icons.visibility_off : Icons.visibility,
                                                                    color: const Color(0xff7c71b2),
                                                                ),
                                                                onPressed: () {
                                                                    setState(() {
                                                                        _obscureTextConfirm = !_obscureTextConfirm;
                                                                    });
                                                                },
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
                                        
                                        SizedBox(height: deviceHeight*0.03),
                                        
                                        //* Sign Up button
                                        Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                                GestureDetector(
                                                    onTap: () {},
                                                
                                                    child: Material(
                                                        elevation: 3,
                                                        borderRadius: BorderRadius.circular(10),
                                                        
                                                        child: Container(
                                                            width: deviceWidth*0.88,
                                                            padding: EdgeInsets.symmetric(vertical: deviceHeight*0.01),
                                                            
                                                            decoration: BoxDecoration(
                                                                color: Color(0xffa193c6),
                                                                borderRadius: BorderRadius.circular(10),
                                                            ),
                                                            
                                                            child: Align(
                                                                alignment: Alignment.center,
                                                                child: Text(
                                                                    'Sign Up',
                                                                    style: TextStyle(
                                                                        color: Colors.white,
                                                                        fontSize: deviceWidth*0.05,
                                                                        fontWeight: FontWeight.w500,
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
                                                        color: Colors.black87,
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
                                                        borderRadius: BorderRadius.circular(10),
                                                        
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
                                                                            width: deviceWidth*0.07,
                                                                            color: Colors.white,
                                                                            fit: BoxFit.cover,
                                                                        ),
                                
                                                                        SizedBox(width: deviceWidth*0.03),
                                
                                                                        Text(
                                                                            'Sign Up with Google',
                                                                            style: TextStyle(
                                                                                color: Colors.white,
                                                                                fontSize: deviceWidth*0.05,
                                                                                fontWeight: FontWeight.w500,
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
                                
                                        SizedBox(height: deviceHeight*0.05),
                                
                                        //* Already have an account
                                        Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                                Text(
                                                    'Already have an account?',
                                                    style: TextStyle(
                                                        color: Colors.black87,
                                                        fontSize: deviceWidth*0.042,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                ),
                                
                                                SizedBox(width: deviceWidth*0.02),
                                
                                                GestureDetector(
                                                    onTap: () {
                                                        Navigator.of(context).push(
                                                            PageRouteBuilder(
                                                                pageBuilder: (context, animation, secondaryAnimation) => LoginPage(),
                                                                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                                                    return RotationTransition(
                                                                        turns: Tween<double>(
                                                                            begin: 0.95,
                                                                            end: 1.0,
                                                                        ).animate(CurvedAnimation(
                                                                            parent: animation,
                                                                            curve: Curves.easeOutBack,
                                                                        )),
                                                                        child: ScaleTransition(
                                                                            scale: Tween<double>(
                                                                                begin: 0.8,
                                                                                end: 1.0,
                                                                            ).animate(CurvedAnimation(
                                                                                parent: animation,
                                                                                curve: Curves.easeOutBack,
                                                                            )),
                                                                            child: child,
                                                                        ),
                                                                    );
                                                                },
                                                            ),
                                                        );
                                                    },
                                
                                                    child: Text(
                                                        'Sign In',
                                                        style: TextStyle(
                                                            color: Color(0xffa193c6),
                                                            fontSize: deviceWidth*0.042,
                                                            fontWeight: FontWeight.w700,
                                                        ),
                                                    ),
                                                ),
                                            ],
                                        ),
                                        
                                        SizedBox(width: deviceWidth*0.8),
                                    ],
                                ),
                            ),
                        ),
                    ],
                ),
            ),
        );
    }
}

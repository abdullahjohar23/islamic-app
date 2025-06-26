import 'package:flutter/material.dart';
import 'package:islamic_app/pages/login_page.dart';

class LandingPage extends StatelessWidget {
    const LandingPage({super.key});

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

                child: Container(
                    margin: EdgeInsets.only(top: deviceHeight*0.2),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            //* Image 'Iqra'
                            Image.asset(
                                'asset/images/quran.png',
                                width: deviceWidth*0.3,
                                height: deviceWidth*0.3,
                                fit: BoxFit.cover,
                            ),
                    
                            SizedBox(height: deviceHeight*0.05),
                            
                            //* Welcome Label
                            Text(
                                'Welcome!',
                                style: TextStyle(
                                    fontFamily: 'Luckiest_Guy',
                                    color: Colors.white,
                                    fontSize: deviceWidth*0.13,
                                ),
                            ),
                    
                            //* Slogan Label
                            Text(
                                'Discover, Learn and Grow in Faith',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: deviceWidth*0.05,
                                ),
                            ),
                    
                            SizedBox(height: deviceHeight*0.23),
                    
                            //* Get Started Button
                            GestureDetector(
                                onTap: () {
                                    Navigator.of(context).push(
                                        PageRouteBuilder(
                                            pageBuilder: (context, animation, secondaryAnimation) => LoginPage(),
                                            transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                                return SlideTransition(
                                                    position: Tween<Offset>(
                                                        begin: Offset(0.0, 1.0), // from bottom to up
                                                        end: Offset.zero,
                                                    ).animate(animation),
                                                        
                                                    child: child,
                                                );
                                            },
                                        ),
                                    );
                                },

                                child: Material(
                                    elevation: 3,
                                    borderRadius: BorderRadius.circular(10),
                                    
                                    child: Container(
                                        padding: EdgeInsets.symmetric(horizontal: deviceWidth*0.25, vertical: deviceHeight*0.01),
                                        
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(10),
                                        ),
                                                    
                                        child: Text(
                                            'Get Started',
                                            style: TextStyle(
                                                color: Color(0xffa193c6),
                                                fontSize: deviceHeight*0.03,
                                                fontWeight: FontWeight.bold,
                                            ),
                                        ),
                                    ),
                                ),
                            ),
                        ],
                    ),
                ),
            ),
        );
    }
}

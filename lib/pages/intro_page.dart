import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_practice/components/buttons.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 105, 95),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Welcome to Sushi Hub",
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.all(50),
                child: Image.asset('lib/images/salmon_eggs.png'),
              ),
              Text(
                "THE TEST OF JAPANESE FOOD",
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 44,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Experience the authentic flavors of Japan with our exquisite sushi selection.",
                style: TextStyle(
                  color: Colors.grey[200],
                  fontWeight: FontWeight.w400,
                  height: 2,
                ),
              ),
              SizedBox(height: 30),
              CustomButton(label: "Get Started",onTap: () {
                // Handle button tap
                Navigator.pushNamed(context, '/menuPage');
              },),
                
            ],
          ),
        ),
      ),
    );
  }
}

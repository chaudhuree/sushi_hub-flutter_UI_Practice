import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_practice/components/buttons.dart';
import 'package:ui_practice/models/food.dart';
import 'package:ui_practice/themes/colors.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  final List<Food> foods = [
    Food(
      name: "Salmon Sushi",
      imageUrl: 'lib/images/salmon_sushi.png',
      price: 12.99,
      rating: "4.5",
    ),
    Food(
      name: "Tuna Roll",
      imageUrl: 'lib/images/tuna.png',
      price: 10.99,
      rating: "4.2",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Tokyo"),
        leading: Icon(Icons.menu),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          // promo banner
          Container(
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: BorderRadius.circular(12),
            ),

            margin: const EdgeInsets.symmetric(horizontal: 25),

            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Get 30% promo",
                        style: GoogleFonts.dmSerifDisplay(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                      CustomButton(
                        label: "Redeem",
                        onTap: () {},
                        fullWidth: false,
                      ),
                    ],
                  ),
                ),
                Image(
                  image: AssetImage('lib/images/many_sushi.png'),
                  height: 100,
                ),
              ],
            ),
          ),
          SizedBox(height: 25),
          // search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search for sushi...",
                  prefixIcon: Icon(Icons.search, color: Colors.grey[600]),
                  filled: true,
                  fillColor: Colors.transparent,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 16,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),

          // menu list

          // popular food
        ],
      ),
    );
  }
}

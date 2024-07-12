import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OfferDiscountsPopup(),
      ),
    );
  }
}

class OfferDiscountsPopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 312,
        height: 323,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10.0,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Stack(
          children: [
            const Positioned(
              top: 21,
              left: 33,
              child: Text(
                'Offer/ Discounts',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  height: 25 / 16,
                  letterSpacing: 0.4,
                  color: Color(0xFF000000), // Set the text color to black
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Positioned(
              top: 56,
              left: 25,
              child: OfferCard(imagePath: 'assets/discount_icon.jpg'),
            ),
            Positioned(
              top: 188,
              left: 25,
              child: OfferCard(imagePath: 'assets/discount_icon.jpg'),
            ),
            Positioned(
              top: 20,
              right: 20,
              child: GestureDetector(
                onTap: () {
                  // Close the popup
                  Navigator.of(context).pop();
                },
                child: Icon(Icons.close, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OfferCard extends StatelessWidget {
  final String imagePath;

  OfferCard({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 263.89,
      height: 111,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10.0),
        ),
        border: Border.all(
          color: Colors.black.withOpacity(0.1),
          width: 0.5,
        ),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

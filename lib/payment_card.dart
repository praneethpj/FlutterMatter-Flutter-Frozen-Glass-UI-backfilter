import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentCart extends StatefulWidget {
  final String cardType;
  final String cardname;
  final String cardNumber;
  final String expireDate;
  const PaymentCart(
      {super.key,
      required this.cardType,
      required this.cardname,
      required this.cardNumber,
      required this.expireDate});

  @override
  State<PaymentCart> createState() => _PaymentCartState();
}

class _PaymentCartState extends State<PaymentCart> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                width: width - 60,
                height: height / 4,
                decoration:
                    BoxDecoration(color: Colors.grey.shade200.withOpacity(0.4)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "${this.widget.cardType}",
                          style: GoogleFonts.abel(
                              color: Colors.white60,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Center(
                          child: Text(
                            "",
                            style: GoogleFonts.abel(
                                color: Colors.white60,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "${this.widget.cardname}",
                          style: GoogleFonts.abel(
                              color: Colors.white60,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "${this.widget.cardNumber}",
                          style: GoogleFonts.abel(
                              color: Colors.white60,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${this.widget.expireDate}",
                          style: GoogleFonts.abel(
                              color: Colors.white60,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

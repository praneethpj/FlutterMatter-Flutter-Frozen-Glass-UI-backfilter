import 'package:ep04/payment_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    List<Widget> paymentCard = [
      PaymentCart(
        cardType: "Visa",
        cardname: "Amanda Agra",
        cardNumber: "1234 456 789",
        expireDate: "12/25",
      ),
      PaymentCart(
        cardType: "Master",
        cardname: "Amanda Agra",
        cardNumber: "1234 456 789",
        expireDate: "12/25",
      ),
      PaymentCart(
        cardType: "American Express",
        cardname: "Amanda Agra",
        cardNumber: "1234 456 789",
        expireDate: "12/25",
      ),
    ];

    return Scaffold(
        body: Container(
      child: Column(
        children: [
          Container(
            height: (height) / 2,
            width: width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(260),
                    bottomLeft: Radius.circular(150)),
                gradient: LinearGradient(
                  colors: [Color(0xffe91e63), Color(0xffff9800)],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                )),
            child: SafeArea(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Hello Amanda",
                          style: GoogleFonts.lato(color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://i.pinimg.com/originals/fb/25/ac/fb25ac2832194c7494ef28bd5e33d9eb.jpg"),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Cards",
                          style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "ADD CARD +",
                          style: GoogleFonts.lato(
                              color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Flexible(
                    child: ListView.builder(
                      itemCount: paymentCard.length,
                      scrollDirection: Axis.horizontal,
                      physics: PageScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: paymentCard[index],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Current Account Bank Balance",
                  style: GoogleFonts.lato(color: Colors.black54),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "\$500,000",
                  style: GoogleFonts.lato(fontSize: 25, color: Colors.pink),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          ListTile(
            leading: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.pinkAccent),
              child: Icon(Icons.music_note, color: Colors.white),
            ),
            title: Text(
              "Apple Music",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            subtitle: Text("NMOTR879GJK"),
            trailing: Text("-\$5",
                style: TextStyle(
                  fontSize: 20,
                )),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.pinkAccent),
              child: Icon(Icons.note, color: Colors.white),
            ),
            title: Text(
              "Ebay",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            subtitle: Text("F01JKLUTR7"),
            trailing: Text("-\$110",
                style: TextStyle(
                  fontSize: 20,
                )),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.pinkAccent),
              child: Icon(Icons.badge, color: Colors.white),
            ),
            title: Text(
              "Amazon",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            subtitle: Text("LHTY01JKLUTR7"),
            trailing: Text("-\$80",
                style: TextStyle(
                  fontSize: 20,
                )),
          ),
        ],
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TrakingVoiture extends StatefulWidget {
  const TrakingVoiture({Key? key}) : super(key: key);

  @override
  State<TrakingVoiture> createState() => _TrakingVoitureState();
}

class _TrakingVoitureState extends State<TrakingVoiture> {
  late int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        {
          Navigator.pushNamed(context, '/TrakingVoiture');
        }
        break;

      case 1:
        {
          Navigator.pushNamed(context, '/TrakingVoiture');
        }
        break;
      case 2:
        {
          Navigator.pushNamed(context, '/ListdeVoiture');
        }
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Neapolic',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0, // Remove the elevation/shadow
          // toolbarHeight: 220,
          leading: Positioned(
            top: 0,
            left: 20,
            child: Image.asset(
              'assets/images/img_logoneapolisv444_97x137.png',
              width: 100,
              height: 200,
            ),
          ),

          title: null,
        ),
        body: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  SingleChildScrollView(
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Stack(
                          children: [
                            Text("Votre historique ",
                                style: TextStyle(
                                  fontSize: 24,
                                )),
                            SizedBox(
                              height: 25,
                            ),
                            Container(
                              width: 350,
                              height: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xfffffcfc),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/img_renaultsymbol2.png",
                                        width: 152,
                                        height: 99,
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        "Demande de \n réservation:\n renault-symbol\n prix: 1120",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: EdgeInsets.only(top: 115, right: 70),
                                // EdgeInsets.only(top: 240.0, left: 100.0, right: 15),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, '/detailVoiture');
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.red,
                                    onPrimary: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide.none,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(0.0),
                                    child: Text(
                                      "Traking",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Nunito',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: -0.36,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.red,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.list_alt),
              label: 'TrakingVoiture',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.map),
              // SvgPicture.asset('assets/images/google-maps-3.svg',
              //   // width: 24,
              //   // height: 24,
              // ),
              label: 'Liste de voiture',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'visture',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

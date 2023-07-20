import 'package:flutter/material.dart';

class ListdeDemande extends StatefulWidget {
  const ListdeDemande({Key? key}) : super(key: key);

  @override
  State<ListdeDemande> createState() => _ListdeDemandeState();
}

class _ListdeDemandeState extends State<ListdeDemande> {
  bool isButtonPressed = true;
  bool isButtonPressed2 = false;
  late int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        {
          Navigator.pushNamed(context, '/ListdeDemande');
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
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Neapolic',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  Scaffold(
      appBar:AppBar(
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

        body:Center(
                  child: Container(
                      padding: EdgeInsets.fromLTRB(10,60,10,0),
                      alignment: Alignment.center,
                              child: Column(
                                  children: [
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Align(
                                            alignment: Alignment.center,
                                            child: Column(
                                              children: [
                                                ElevatedButton.icon(
                                                  onPressed: () {
                                                    setState(() {
                                                      isButtonPressed = !isButtonPressed;
                                                      if (isButtonPressed2) {
                                                        isButtonPressed2 = false;
                                                      }
                                                    });
                                                  },
                                                  style: ElevatedButton.styleFrom(
                                                    primary: isButtonPressed ? Colors.red : Colors.white,
                                                    onPrimary: Colors.black,
                                                    padding: EdgeInsets.zero, // Remove the default padding
                                                    shape: RoundedRectangleBorder(
                                                      side: BorderSide.none,
                                                      borderRadius: BorderRadius.circular(10.0),
                                                    ),
                                                  ),
                                                  icon: Container(
                                                    padding: EdgeInsets.zero, // Remove the padding
                                                    child: Icon(Icons.list_alt, size: 40), // Adjust the icon size as needed
                                                  ),
                                                  label: Text(""),
                                                ),
                                              ],
                                            ),
                                          ),
                                          // SizedBox(width: 15,),
                                          Align(
                                            alignment: Alignment.topCenter,
                                            child: Column(
                                              children: [
                                                ElevatedButton.icon(
                                                  onPressed: () {
                                                    setState(() {
                                                      isButtonPressed2 = !isButtonPressed2;
                                                      if (isButtonPressed== true)
                                                      {
                                                        isButtonPressed = !isButtonPressed;
                                                      }
                                                    });
                                                  },
                                                  style: ElevatedButton.styleFrom(
                                                    primary: isButtonPressed2 ? Colors.red : Colors.white,
                                                    onPrimary: Colors.black,
                                                    padding: EdgeInsets.zero,
                                                    shape: RoundedRectangleBorder(
                                                      side: BorderSide.none,
                                                      borderRadius: BorderRadius.circular(10.0),
                                                    ),
                                                  ),
                                                  icon:  Container(
                                                      padding: EdgeInsets.zero, // Remove the padding
                                                      child: Icon(Icons.calendar_month, size: 40), // Adjust the icon size as needed
                                                    ),
                                                  label: Padding(
                                                    padding: EdgeInsets.all(0.0),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ]
                                  ),
                                    SizedBox(height: 25,),
                                    Container(
                                        width: 360,
                                        height: 95,
                                        decoration:     BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            color: Color(0xffd15151)),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Text(
                                              "ahmed : reserve voiture dans \n 2023/7/10 jusq’a 2023/7/20",
                                              style: TextStyle(
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 25),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.all(10.0),
                                                child:
                                                  Text(
                                                    "etat:",
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                              ),
                                              // SizedBox(height: 10),
                                              Padding(
                                                padding: EdgeInsets.all(10.0),
                                                child:
                                                  Text(
                                                    "payant",
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.green,
                                                    ),
                                                  ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                ]
                              )
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
              icon: Icon(Icons.car_repair_sharp),
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

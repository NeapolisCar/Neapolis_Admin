import 'package:flutter/material.dart';
class ListVoiture extends StatefulWidget {
  const ListVoiture({Key? key}) : super(key: key);

  @override
  State<ListVoiture> createState() => _ListVoitureState();
}

class _ListVoitureState extends State<ListVoiture> {
  late String dropdownvalue= "Prix";
  final List<String> _items=["Prix", "Marquet"];
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
    return MaterialApp(
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

      actions: [
        IconButton(
          icon: Icon(Icons.menu),
          color: Colors.black,
          onPressed: () {
          },
        ),
      ],
      title: null,
    ),

    body: SafeArea(
      child: Stack(
          children: [
                  Column(
                  children: [
                    Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            hintText: 'Search',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
                          height: 48,
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 0,
                            ),
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xfffff8f8),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Center(
                              child: DropdownButton(
                                hint: Text("Tri par"),
                                itemHeight: 50,
                                items: _items.map((String item) {
                                  return DropdownMenuItem(
                                    value: item,
                                    child: Row(
                                      children: [
                                        Text(item),
                                      ],
                                    ),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownvalue = newValue!;
                                  });
                                },
                                value: dropdownvalue,
                                isExpanded: true, // Set isExpanded to true
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 25,),
                    SingleChildScrollView(
                    child :Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Stack(
                          children: [
                            Container(
                              width: 350,
                              height: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xfffffcfc),
                                border: Border.all(color: Colors.black),
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
                                  Image.asset(
                                    "assets/images/img_renaultsymbol2.png",
                                    width: 152,
                                    height: 99,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10.0, top: 50),
                                    child: Text(
                                      "1000 TND / total",
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 30),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      "PLUS D'INFORMATION",
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: EdgeInsets.only(top: 30.0, right: 50.0),
                                child: Text(
                                    "Renault-symbol",
                                    style: TextStyle(
                                      fontSize: 16,
                                    )
                                )
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: EdgeInsets.only(top: 60.0, left: 150.0),
                                child :Row(
                                  children: [
                                    Column(
                                      children: [
                                         Image.asset(
                                                "assets/images/img_seats1.png",
                                                width: 20,
                                                height: 24,
                                              )

                                      ],

                                    ),
                                    SizedBox(width: 5,),
                                    Column(
                                      children: [
                                        Text(
                                                  "5 SEATS",
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                  )
                                              )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: EdgeInsets.only(top: 56.0, left: 230.0),
                                child :Row(
                                  children: [
                                    Column(
                                      children: [
                                        Image.asset(
                                          "assets/images/img_bags1.png",
                                          width: 30,
                                          height: 30,
                                        )

                                      ],

                                    ),
                                    SizedBox(width: 5,),
                                    Column(
                                      children: [
                                        Text(
                                            "3 BAGS",
                                            style: TextStyle(
                                              fontSize: 13,
                                            )
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: EdgeInsets.only(top: 100.0, left: 150.0),
                                child :Row(
                                  children: [
                                    Column(
                                      children: [
                                        Image.asset(
                                          "assets/images/img_doors1.png",
                                          width: 30,
                                          height: 30,
                                        )
                                      ],
                                    ),
                                    SizedBox(width: 5,),
                                    Column(
                                      children: [
                                        Text(
                                            "5 DOORS",
                                            style: TextStyle(
                                              fontSize: 13,
                                            )
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: EdgeInsets.only(top: 150.0, left: 145.0),
                                child :Row(
                                  children: [
                                    Column(
                                      children: [
                                        Image.asset(
                                          "assets/images/img_capture1.png",
                                          width: 30,
                                          height: 30,
                                        )

                                      ],
                                    ),
                                    SizedBox(width: 5,),
                                    Column(
                                      children: [
                                        Text(
                                            "BEIGE,BROWN \n ,GREY ,HAMMAMET, \n JET BLACK, \n JET RED,\n MULTI-PATTERN, \n WHITE",
                                            style: TextStyle(
                                              fontSize: 12,
                                            )
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: EdgeInsets.only(top: 240.0, left: 100.0 , right: 15),
                                child : ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context,'/detailVoiture');
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary:  Colors.red ,
                                    onPrimary: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide.none,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(0.0),
                                    child: Text(
                                      "PAYEZ MAINTENANT",
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

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _mot_de_passe = TextEditingController();
  late String _idcl = '';
  late String _idtr = '';
  Widget? _Wighet = Center(child: CircularProgressIndicator());
  @override

  void initState() {
    super.initState();

  }



  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          return false;
        },
        child : MaterialApp(
          debugShowCheckedModeBanner: false,
          title: '',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: Scaffold(
            body:Stack(
              children: [
                    Positioned(
                    top: 0,
                    left: 20,
                    child: Image.asset(
                      'assets/images/img_logoneapolisv444.png',
                      width: 100,
                      height: 100,
                    ),
                  ),

                  // Other widgets in the body
                  Center(
                    child: Column(
                        children:
                        <Widget>[
                        SizedBox(height: 100.0),
                    SizedBox(
                      width: 380,
                      height: 70,
                      child: Text(
                        'bienvenue à nouveau dans neapolis car',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 36,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          // SizedBox(height: 50.0),
                          Image.asset(
                            'assets/images/img_logoneapolisv444_97x137.png',
                            width: 200,
                            height: 200,
                          ),
                          // SizedBox(height: 32.0),
                          TextField(
                            controller: _email,
                            decoration: InputDecoration(
                              labelText: 'Email',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              prefixIcon: Icon(Icons.person),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          TextField(
                            obscureText: true,
                            controller: _mot_de_passe,
                            decoration: InputDecoration(
                              labelText: 'Mot de passe',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              prefixIcon: Icon(Icons.key),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/ListdeDemande');
                              // Logins(_email.text, _mot_de_passe.text, context);
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red[900],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ), // Background color
                            ),
                            child: const Text('Login'),
                          ),
                          SizedBox(height: 32.0),
                          Text("Vous n’avez pas de compte ?"),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/inscriptions');
                            },
                            style: ElevatedButton.styleFrom(
                              // primary: Colors.blue[700],

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ), // Background color
                            ),
                            child: const Text(
                              "S'inscrire",
                              style: TextStyle(
                                fontSize: 18,
                                color: Color.fromRGBO(12, 30, 196, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                      ],
                    ),
                ),
              ],
            ),
          ),
        )
    );
  }
}

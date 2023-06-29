import 'dart:ui';

import 'package:hexcolor/hexcolor.dart';

import 'main.dart';
import 'package:flutter/material.dart';

void loginProccess(String noHp, BuildContext context) {
  if (noHp != null || noHp != '') {
    Navigator.pushNamed(context, 'home');
  } else {
    print('Not Login');
  }
}

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool isChecked = false;
  final textMasuk = Colors.white70;
  Color backgroundButtonMasuk = HexColor('#E4E5EA');
  final _controllerNoHp = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _controllerNoHp.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(height: 40),
                Container(
                  height: 190,
                  width: 200,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/ilustrasi1.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(height: 46.37),
                const Text(
                  'Silahkan masuk dengan nomor telkomsel kamu',
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                  ),
                ),

                // Bagian Form
                Container(height: 24),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Nomor HP',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                        ),
                      ),
                      Container(height: 8),
                      TextFormField(
                        controller: _controllerNoHp,
                        onChanged: (value) {
                          if (value == null || value == '') {
                            setState(() {
                              backgroundButtonMasuk = HexColor('#E4E5EA');
                            });
                          } else {
                            setState(() {
                              backgroundButtonMasuk = HexColor('#EC2028');
                            });
                          }
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: HexColor('#CED6E0'))),
                          hintText: 'Cth. 08129011xxxx',
                          hintStyle: TextStyle(
                            color: HexColor('#A4B0BE'),
                            fontFamily: 'OpenSans',
                          ),
                        ),
                      ),

                      //Persetujuan

                      Container(height: 16),
                      Container(
                        child: CheckboxListTile(
                          contentPadding: EdgeInsets.all(-0),
                          controlAffinity: ListTileControlAffinity.leading,
                          checkColor: HexColor('#ffffff'),
                          activeColor: HexColor('#EC2028'),
                          value: isChecked,
                          onChanged: (value) {
                            setState(
                              () {
                                isChecked = true;
                              },
                            );
                          },
                          title: Text.rich(
                            TextSpan(
                              children: [
                                const TextSpan(
                                  text: 'Saya menyetujui ',
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                                TextSpan(
                                  text: 'syarat',
                                  style: TextStyle(
                                    color: HexColor('#EC2028'),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const TextSpan(
                                  text: ', ',
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                                TextSpan(
                                  text: 'ketentuan',
                                  style: TextStyle(
                                    color: HexColor('#EC2028'),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const TextSpan(
                                  text: ', dan ',
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                                TextSpan(
                                  text: 'privasi',
                                  style: TextStyle(
                                    color: HexColor('#EC2028'),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const TextSpan(
                                  text: ' Telkomsel',
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      // Button Login
                      Container(height: 40),
                      SizedBox(
                        width: 500,
                        height: 49,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.resolveWith(
                              (states) {
                                if (states.contains(MaterialState.pressed)) {
                                  return HexColor('#EC2028');
                                }
                                return backgroundButtonMasuk;
                              },
                            ),
                            shadowColor: MaterialStateProperty.resolveWith(
                                (states) => Colors.transparent),
                          ),
                          onPressed: () {
                            loginProccess(_controllerNoHp.text, context);
                          },
                          child: Text(
                            'MASUK',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 20,
                              color: textMasuk,
                            ),
                          ),
                        ),
                      ),

                      //Atau Masuk menggunakan
                      Container(height: 16),
                      Center(
                        child: Text(
                          'Atau masuk menggunakan',
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            color: HexColor('#747D8C'),
                          ),
                        ),
                      ),
                      Container(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 45,
                            width: 157,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.resolveWith(
                                  (states) {
                                    if (states
                                        .contains(MaterialState.pressed)) {
                                      return HexColor('#3B5998');
                                    } else {
                                      return Colors.white;
                                    }
                                  },
                                ),
                                shadowColor: MaterialStateProperty.resolveWith(
                                    (states) => Colors.transparent),
                                side: MaterialStateProperty.resolveWith(
                                  (states) => BorderSide(
                                    color: HexColor('##3B5998'),
                                  ),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.facebook,
                                    color: HexColor('#3B5998'),
                                  ),
                                  Container(width: 8),
                                  Text(
                                    'Facebook',
                                    style: TextStyle(
                                      color: HexColor('#3B5998'),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(width: 21),
                          SizedBox(
                            height: 45,
                            width: 157,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.resolveWith(
                                  (states) {
                                    if (states
                                        .contains(MaterialState.pressed)) {
                                      return HexColor('#1DA1F2');
                                    } else {
                                      return Colors.white;
                                    }
                                  },
                                ),
                                shadowColor: MaterialStateProperty.resolveWith(
                                    (states) => Colors.transparent),
                                side: MaterialStateProperty.resolveWith(
                                  (states) => BorderSide(
                                    color: HexColor('##1DA1F2'),
                                  ),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.facebook,
                                    color: HexColor('#1DA1F2'),
                                  ),
                                  Container(width: 8),
                                  Text(
                                    'Twitter',
                                    style: TextStyle(
                                      color: HexColor('#3B5998'),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../home/home_screen.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          'assets/images/auth_bg.jpeg',
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: HexColor('#003032').withOpacity(0.7),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 120,
              ),
              Image.asset(
                'assets/images/logo.png',
              ),
              const SizedBox(
                height: 48,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 24.0),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.welcomeTitle,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: MaterialButton(
                              color: HexColor('#3980c0'),
                              shape: const ContinuousRectangleBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(16.0))),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomeScreen(
                                      isEmployee: false,
                                    ),
                                  ),
                                );
                              },
                              child: Text(
                                AppLocalizations.of(context)!.clientLogin,
                                style: const TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: MaterialButton(
                              color: Colors.green,
                              shape: const ContinuousRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16.0))),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomeScreen(
                                      isEmployee: true,
                                    ),
                                  ),
                                );
                              },
                              child: Text(
                                AppLocalizations.of(context)!.employeeLogin,
                                style: const TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        )
      ],
    ));
  }
}

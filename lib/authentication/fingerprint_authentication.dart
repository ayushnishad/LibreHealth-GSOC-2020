import 'package:local_auth/local_auth.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:birthpad/birth_registration/birth_registration.dart';

class FingerprintAuth extends StatefulWidget {
  @override
  _FingerprintAuthState createState() => _FingerprintAuthState();
}

class _FingerprintAuthState extends State<FingerprintAuth> {
  final LocalAuthentication _localAuthentication = LocalAuthentication();

  Future<void> _authorizeNow() async {
    bool isAuthorized = false;
    try {
      isAuthorized = await _localAuthentication.authenticateWithBiometrics(
        localizedReason: "Please authenticate to proceed to registration.",
        useErrorDialogs: true,
        stickyAuth: true,
      );
    } on PlatformException catch (e) {
      print(e);
    }

    if (!mounted) return;

    setState(() {
      if (isAuthorized) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BirthRegistration()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Spacer(
              flex: 2,
            ),
            Container(
              height: 200,
              child: Image.network(
                  "https://louisemclennan.files.wordpress.com/2016/11/fingerprint9.png"),
            ),
            Text(
              "Fingerprint Authentication",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Spacer(
              flex: 1,
            ),
            Text(
              "Fingerprint Authentication required for security purpose.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            Spacer(
              flex: 1,
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: _authorizeNow,
              child: Text("Verify now"),
              colorBrightness: Brightness.light,
            ),
            Spacer(
              flex: 4,
            )
          ],
        ),
      ),
    );
  }
}

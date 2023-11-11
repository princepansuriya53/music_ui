import 'package:flutter/material.dart';
import 'Mainpage.dart';
import 'Newaccount.dart';

class Singupform extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/bak.webp",
              fit: BoxFit.contain,
            ),
            Center(
              child: SizedBox(
                width: 330,
                height: 400,
                child: Card(
                  color: Colors.indigo[400],
                  shadowColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 55,
                  child: Forms(),
                ),
              ),
            ),
            Image.asset(
              "assets/images/bak.webp",
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}

class Forms extends StatefulWidget {
  @override
  State<Forms> createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Login Here",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter The User Name",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter The Password",
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Forget Password?',
                  style: TextStyle(
                    color: Colors.red[300],
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextButton(
                child: Text('Login'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Mainpage(),
                    ),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> State) {
                    if (State.contains(MaterialState.selected))
                      return Colors.green;
                    return Colors.black87;
                  }),
                  alignment: Alignment.center,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "Don't Have an Account?",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => accountcreate(),
                        ),
                      );
                    },
                    child: Text(
                      "Create Account",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue[400],
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

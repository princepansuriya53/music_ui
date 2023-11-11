import 'package:flutter/material.dart';

class accountcreate extends StatefulWidget {
  @override
  State<accountcreate> createState() => _accountcreateState();
}

class _accountcreateState extends State<accountcreate> {
  bool _ishide = true;
  bool _ohide = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[100],
      appBar: AppBar(
        title: const Text('Account Create'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              'Fill Form',
              style: TextStyle(
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Fisrt Name",
                  hintText: "Enter The F Name ",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Middel Name",
                  hintText: "Enter The M Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Last Name",
                  hintText: "Enter The L Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Contact/Number",
                  hintText: "Enter The Mobile Number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Email Address",
                  hintText: "Enter The Gmail Address",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: TextField(
                obscureText: _ishide,
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "Enter The Password",
                  suffix: InkWell(
                    onTap: _showpassword,
                    child: Icon(
                      _ishide ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextField(
                obscureText: _ohide,
                decoration: InputDecoration(
                  labelText: "Confirm Password",
                  hintText: "Enter The Confirm Password",
                  suffix: InkWell(
                    onTap: _SHowpass,
                    child:
                        Icon(_ohide ? Icons.visibility : Icons.visibility_off),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: MaterialButton(
                elevation: 10,
                animationDuration: const Duration(seconds: 2),
                color: Colors.black,
                child: const Text(
                  'Submit',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OK(),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  void _showpassword() {
    setState(() {
      _ishide = !_ishide;
    });
  }

  void _SHowpass() {
    setState(() {
      _ohide = !_ohide;
    });
  }
}

class OK extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const Text(
        'Your Account Is Created Enjoy the Music',
        style: TextStyle(
            color: Colors.blueAccent,
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}

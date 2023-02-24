import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePage();
}
class _HomePage extends State<HomePage>{
  bool _isSecurePassword = true;
  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(

            body: SingleChildScrollView(
              child: Column(
                children: [
                  ClipPath(
                    clipper: AppCustomClipper(),
                    child: Container(
                      padding: const EdgeInsets.only(bottom: 135),
                      color: Colors.purple,
                      height: 350,
                      child: const  Center(
                        child: const Text(
                          'Register',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 2),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white54,
                            hintText: 'Enter the Full Name ',
                            label: const Text('Full Name'),
                            prefixIcon: const Icon(
                              Icons.person_2_outlined,
                              color: Colors.purple,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 2),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white54,
                            hintText: 'Enter the gmail',
                            label: const Text('Email'),
                            prefixIcon: const Icon(
                              Icons.email_outlined,
                              color: Colors.purple,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 2),
                        child: TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: _isSecurePassword,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white54,
                            hintText: 'Enter password ',
                            label: const Text('password'),
                            prefixIcon: const Icon(
                              Icons.lock_open,
                              color: Colors.purple,
                            ),
                            suffixIcon: togglePassword(),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 2),
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            prefixText: '+970',
                            filled: true,
                            fillColor: Colors.white54,
                            hintText: 'Enter phone number ',
                            label: const Text('phone '),
                            prefixIcon: const Icon(
                              Icons.phone,
                              color: Colors.purple,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 16,vertical: 2),
                          child:
                          Column(children: [
                            ElevatedButton(style: ElevatedButton.styleFrom(
                              side: BorderSide(width: 1,color: Colors.white),

                              backgroundColor: Colors.purple,
                              fixedSize: Size(280, 40),
                            ),
                              onPressed: () {  },
                              child: const Text(
                                'Register',
                                style: TextStyle(color: Colors.white,fontSize: 18,),
                              ),),
                            ElevatedButton(style: ElevatedButton.styleFrom(
                              side: BorderSide(width: 1,color: Colors.purple),
                              backgroundColor: Colors.white,
                              fixedSize: Size(280, 40),

                            ),
                              onPressed: () {  },
                              child: const Text(
                                'Login',
                                style: TextStyle(color: Colors.purple,fontSize: 18,),
                              ),),
                          ],)
                      )
                    ],
                  )
                ],
              ),
            )),
      );
  }
  Widget togglePassword() {
    return IconButton(
      onPressed: () {
        setState(() {
          _isSecurePassword = !_isSecurePassword;
        });

      },
      icon: _isSecurePassword
          ? Icon(Icons.visibility)
          : Icon(Icons.visibility_off),
      color: Colors.purple,
    );
  }
}
class AppCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path p = Path();
    p.lineTo(0, size.height / 2);
    p.cubicTo(size.width / 3, 0.5 * (size.height / 2), 3 * (size.width / 4),
        size.height / 1.5, size.width, size.height * 0.5);
    p.lineTo(size.width, 0);
    return p;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 189, 33, 174)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.9987500, size.height * 0.5920000);
    path0.quadraticBezierTo(
        size.width * 0.9987500, size.height * 0.0640000, size.width, 0);
    path0.lineTo(size.width * 0.0262500, 0);
    path0.quadraticBezierTo(size.width * 0.0290625, size.height * 0.5215000,
        size.width * 0.0287500, size.height * 0.6960000);
    path0.cubicTo(
        size.width * 0.2709375,
        size.height * 0.3395000,
        size.width * 0.8009375,
        size.height * 0.9635000,
        size.width * 0.9987500,
        size.height * 0.5920000);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

import 'package:flutter/material.dart';

class DrawerComponent extends StatelessWidget {
  const DrawerComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color(0xFFECECEC),
      ),
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 330.0,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFF2E2E2E),
                ),
                child: Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: new BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/hero.png'),
                                  radius: 35.0,
                                ),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Text(
                                'Caio o Oliveira',
                                style: TextStyle(
                                  color: Color(0xFFECECEC),
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 2.4,
                                  fontFamily: 'RobotoSlab',
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.email,
                                    color: Color(0xFFEEB868),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    'caioliveira@gmail.com',
                                    style: TextStyle(
                                      color: Color(0xFFECECEC),
                                      fontSize: 15.0,
                                      fontFamily: 'RobotoSlab',
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0),
                  ],
                ),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/concluded');
              },
              child: const Text('concluídos'),
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: const Text('Lista'),
            ),
          ],
        ),
      ),
    );
  }
}

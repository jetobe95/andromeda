import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Flexible(
                  flex: 2,
                  child: SvgPicture.asset(
                    'assets/landing.svg',
                    height: 340,
                    width: 340,
                  )),
              const SizedBox(
                height: 14,
              ),
              Flexible(
                child: Column(
                  children: const [
                    Text(
                      'Hola',
                      style: TextStyle(fontSize: 40),
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    Text(
                      '¿Ya te uniste?',
                      style: TextStyle(fontSize: 17),
                    ),
                    Text(
                      'Somos ANDROMEDA, la mayor\nplataforma juvenil dedicada a\nsalud sexual y reproductiva.',
                      style: TextStyle(fontSize: 17),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Registrarme'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/home');
                },
                child: const Text('Ingresar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

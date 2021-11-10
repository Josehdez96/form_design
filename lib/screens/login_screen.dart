import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          _Background(size: size),
          const _CustomForm(),
        ],
      ),
    );
  }
}

class _CustomForm extends StatelessWidget {
  const _CustomForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white
        ),
        height: 370,
        width: 300,
      ),
    );
  }
}

class _Background extends StatelessWidget {
  const _Background({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: size.height * 0.40,
          width: double.infinity,
          decoration: _purpleBoxDecoration(),
          child: Stack(
            children: const [
              _Bubble(top: 90, left: 30),
              _Bubble(top: -40, left: -30),
              _Bubble(top: -50, right: -20),
              _Bubble(bottom: -50, left: 10),
              _Bubble(bottom: 100, right: 20),
            ],
          ),
        )
      ],
    );
  }

  BoxDecoration _purpleBoxDecoration() {
    return const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(63, 63, 156, 1),
              Color.fromRGBO(90, 70, 178, 1)
            ]
          )
        );
  }
}

class _Bubble extends StatelessWidget {
  final double? top;
  final double? left;
  final double? right;
  final double? bottom;

  const _Bubble({
    Key? key, 
    this.top, 
    this.left, 
    this.right, 
    this.bottom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      right: right,
      bottom: bottom,
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: const Color.fromRGBO(255, 255, 255, 0.05)
        ),
      ),
    );
  }
}
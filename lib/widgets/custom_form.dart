import 'package:flutter/material.dart';
import 'package:form_design/ui/input_decorations.dart';

class CustomForm extends StatelessWidget {

  const CustomForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.only(top: 70),
                decoration: _createCardShape(),
                width: double.infinity,
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Text('Login', style: Theme.of(context).textTheme.headline4),
                    const SizedBox(height: 30),
                    const _LoginForm()
                  ],
                ),
              ),
            ),
            const SizedBox(height: 70),
            const Text(
              'Create new account',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18
              ),
            )
          ] 
        ),
      ),
    );
  }

  BoxDecoration _createCardShape() {
    return BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 15,
                  offset: Offset(0, 5)
                )
              ]
            );
  }
}

class _LoginForm extends StatelessWidget {
  const _LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Form(
        child: Column(
          children: [
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.loginInputDecoration()
            )
          ]
        )
      ),
    );
  }
}
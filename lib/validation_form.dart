import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: MyForm()));

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  String? _validateEmail(String? value) {
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (value == null || value.isEmpty) return 'Email is required';
    if (!emailRegex.hasMatch(value)) return 'Enter a valid email';
    return null;
  }

  String? _validatePassword(String? value) {
    final passwordRegex = RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$');
    if (value == null || value.isEmpty) return 'Password is required';
    if (!passwordRegex.hasMatch(value)) {
      return 'Password must be 8+ chars, include letters & numbers';
    }
    return null;
  }
  static final snackBar = SnackBar(content: const Text('Yay! A SnackBar!'),
    action: SnackBarAction(label: 'Undo', onPressed: () {
      print('Undo is processing.');
    },),
  );
  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      print('Form is valid');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Validation Example")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(border: OutlineInputBorder(), labelText: "Email"),
                validator: _validateEmail,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(border: OutlineInputBorder(), labelText: "Password"),
                obscureText: true,
                validator: _validatePassword,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: _submitForm,
                child: const Text("Submit"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

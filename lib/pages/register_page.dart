import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controllers/auth_controller.dart';
import '../models/app_user.dart';
import 'login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController nameC = TextEditingController();
  final TextEditingController nimC = TextEditingController();
  final TextEditingController prodiC = TextEditingController();
  final TextEditingController emailC = TextEditingController();
  final TextEditingController passC = TextEditingController();
  final TextEditingController confirmPassC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthController>(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Register")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: nameC,
                decoration: const InputDecoration(
                  labelText: "Nama Lengkap",
                  border: OutlineInputBorder(),
                ),
                validator: (v) => v!.isEmpty ? "Masukkan nama" : null,
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: nimC,
                decoration: const InputDecoration(
                  labelText: "NIM",
                  border: OutlineInputBorder(),
                ),
                validator: (v) => v!.isEmpty ? "Masukkan NIM" : null,
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: prodiC,
                decoration: const InputDecoration(
                  labelText: "Program Studi",
                  border: OutlineInputBorder(),
                ),
                validator: (v) => v!.isEmpty ? "Masukkan Prodi" : null,
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: emailC,
                decoration: const InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                ),
                validator: (v) =>
                    !v!.contains("@") ? "Email tidak valid" : null,
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: passC,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),
                validator: (v) => v!.length < 6 ? "Min 6 karakter" : null,
              ),
              const SizedBox(height: 12),

              TextFormField(
                controller: confirmPassC,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "Konfirmasi Password",
                  border: OutlineInputBorder(),
                ),
                validator: (v) =>
                    v != passC.text ? "Password tidak sama" : null,
              ),
              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    final user = AppUser(
                      fullName: nameC.text,
                      nim: nimC.text,
                      prodi: prodiC.text,
                      email: emailC.text,
                      password: passC.text,
                    );

                    final success = await auth.register(user);
                    if (success) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (_) => const LoginPage()),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Email sudah terdaftar")),
                      );
                    }
                  }
                },
                child: const Text("Daftar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

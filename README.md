

# 🚀 Flutter Login & Register App

<div align="center">

![Flutter](https://img.shields.io/badge/Flutter-3.19.5-blue?style=for-the-badge&logo=flutter)
![Dart](https://img.shields.io/badge/Dart-3.3.0-blue?style=for-the-badge&logo=dart)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)

**Aplikasi Flutter sederhana untuk latihan implementasi sistem login dan register**

</div>

## 📸 Preview

| Login Screen | Register Screen | Dashboard |
|--------------|-----------------|-----------|
| ![Login](https://via.placeholder.com/300x600/4A44B8/FFFFFF?text=Login+Screen) | ![Register](https://via.placeholder.com/300x600/6C63FF/FFFFFF?text=Register+Screen) | ![Dashboard](https://via.placeholder.com/300x600/36B37E/FFFFFF?text=Dashboard) |

## 📋 Tentang Project

Ini adalah project **Flutter Login & Register** yang dibuat untuk tujuan pembelajaran dan latihan. Project ini mengimplementasikan sistem autentikasi sederhana dengan antarmuka yang user-friendly.

### ✨ Fitur Utama

- ✅ **Sistem Login** dengan validasi email & password
- ✅ **Sistem Register** untuk membuat akun baru  
- ✅ **Dashboard** setelah login berhasil
- ✅ **Logout** functionality
- ✅ **Form Validation** yang robust
- ✅ **Navigation** yang smooth antara halaman
- ✅ **State Management** dengan Provider
- ✅ **Local Storage** menggunakan Shared Preferences

## 🛠️ Teknologi yang Digunakan

| Teknologi | Versi | Kegunaan |
|-----------|-------|----------|
| **Flutter** | 3.19.5 | UI Framework |
| **Dart** | 3.3.0 | Programming Language |
| **Provider** | ^6.1.1 | State Management |
| **Shared Preferences** | ^2.2.2 | Local Storage |
| **Material Design** | Latest | UI Components |

## 📁 Struktur Project (Aktual)

Berdasarkan repository Anda, struktur project:

```
lib/
├── main.dart                      # Entry point aplikasi
├── models/
│   └── user_model.dart           # Data model untuk User
├── providers/
│   └── auth_provider.dart        # Business logic autentikasi
├── screens/
│   ├── login_screen.dart         # Halaman Login
│   ├── register_screen.dart      # Halaman Register
│   └── dashboard_screen.dart     # Halaman setelah login
├── services/
│   └── auth_service.dart         # Service layer untuk auth
├── utils/
│   ├── validators.dart           # Utility validasi form
│   └── shared_preferences.dart   # Helper shared preferences
└── widgets/
    ├── custom_textfield.dart     # Custom input field
    └── primary_button.dart       # Custom button
```

## 🚀 Quick Start

### Prerequisites:
- Flutter SDK ≥ 3.19.0
- Dart SDK ≥ 3.3.0
- Android Studio / VS Code

### Installation Steps:

```bash
# 1. Clone repository
git clone https://github.com/RRachman/LoginRegisterFlutterTasks.git

# 2. Masuk ke directory project
cd LoginRegisterFlutterTasks

# 3. Install dependencies
flutter pub get

# 4. Run aplikasi
flutter run
```

### Untuk Build APK:
```bash
flutter build apk --release
```

## 🎯 Cara Penggunaan

### 1. **Register Akun Baru**
- Buka aplikasi
- Tap "Register" 
- Isi form dengan data valid:
  - Email format benar
  - Password minimal 6 karakter
  - Konfirmasi password harus sama

### 2. **Login**
- Masukkan email & password yang sudah diregister
- Tap "Login"
- Akan diarahkan ke Dashboard jika berhasil

### 3. **Logout**
- Dari Dashboard, tap tombol "Logout"
- Akan kembali ke halaman Login

## 🔧 Konfigurasi & Customization

### Mengubah Theme Colors:
Edit di `main.dart`:

```dart
MaterialApp(
  theme: ThemeData(
    primaryColor: Color(0xFF6C63FF),    // Ungu
    accentColor: Color(0xFF4A44B8),     // Ungu tua
    scaffoldBackgroundColor: Colors.white,
  ),
)
```

### Menambah Validasi Custom:
Edit `utils/validators.dart`:

```dart
static String? validatePhone(String? value) {
  if (value!.isEmpty) return 'Nomor HP harus diisi';
  if (value.length < 10) return 'Nomor HP minimal 10 digit';
  return null;
}
```

## 🐛 Troubleshooting

<details>
<summary><b>❌ Error: Provider not found</b></summary>

**Solution:**
Pastikan Provider sudah di-wrap di main.dart:

```dart
return MultiProvider(
  providers: [
    ChangeNotifierProvider(create: (_) => AuthProvider()),
  ],
  child: MaterialApp(...),
);
```
</details>

<details>
<summary><b>❌ Error: Shared Preferences not working</b></summary>

**Solution:**
Tambah permission di `android/app/src/main/AndroidManifest.xml`:

```xml
<uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"/>
```
</details>

<details>
<summary><b>❌ Build failed - version conflict</b></summary>

**Solution:**
Update dependencies di `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  provider: ^6.1.1
  shared_preferences: ^2.2.2
```
</details>

## 📚 Learning Resources

### Untuk Pemula:
- [Flutter Documentation](https://flutter.dev/docs)
- [Dart Programming](https://dart.dev/guides)
- [Provider Package](https://pub.dev/packages/provider)

### Untuk Development Lanjutan:
- [Clean Architecture Flutter](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html)
- [Flutter Testing](https://flutter.dev/docs/testing)
- [State Management Comparison](https://flutter.dev/docs/development/data-and-backend/state-mgmt/options)

## 🤝 Contributing

Ingin berkontribusi ke project ini? Silakan!

1. **Fork** repository ini
2. **Buat branch** fitur baru (`git checkout -b feature/namafitur`)
3. **Commit** perubahan (`git commit -m 'Menambah fitur X'`)
4. **Push** ke branch (`git push origin feature/namafitur`)
5. **Buat Pull Request**

## 🎯 Roadmap & Enhancement

Fitur yang bisa ditambahkan kedepannya:

- [ ] **Integration dengan REST API**
- [ ] **Google Sign-In**
- [ ] **Biometric Authentication** 
- [ ] **Forgot Password Flow**
- [ ] **Email Verification**
- [ ] **Dark Mode Support**
- [ ] **Multi-language (i18n)**
- [ ] **Unit & Widget Tests**

## 📄 License

Project ini dilisensikan under **MIT License** - lihat file [LICENSE](LICENSE) untuk detail lengkap.

## 👨‍💻 Author

**RRachman** - [GitHub Profile](https://github.com/RRachman)

---

<div align="center">

### ⭐ Jangan lupa kasih star jika project ini membantu!

**Happy Coding!** 🎉

</div>

---

# 🚀 Flutter Login & Register App

Selamat datang di project Flutter Login & Register sederhana! Ini adalah project latihan yang sempurna untuk memulai perjalanan Flutter Anda.

## 📋 Tentang Project

Project ini adalah implementasi **sistem autentikasi sederhana** menggunakan Flutter dengan fitur:

- ✅ **Login** dengan validasi form
- ✅ **Register** dengan validasi form  
- ✅ **Dashboard** setelah login berhasil
- ✅ **Logout** functionality
- ✅ **State Management** dasar

## 🎯 Pilih Level Kesulitan

Pilih tingkat kesulitan yang sesuai dengan level Anda:

<details>
<summary>
🎨 <strong>Pemula (Basic Version)</strong>
</summary>

### Fitur:
- UI sederhana dengan Material Design
- Validasi form dasar
- Navigasi antara halaman
- Penyimpanan data lokal sederhana

```dart
// Contoh code sederhana
class LoginPage extends StatelessWidget {
  // Implementasi dasar
}
```

</details>

<details>
<summary>
⚡ <strong>Menengah (Intermediate Version)</strong>
</summary>

### Fitur:
- State Management dengan Provider/Riverpod
- Validasi form advanced
- Shared Preferences untuk persistensi
- Custom animations
- Error handling

```dart
// Contoh dengan state management
class AuthProvider with ChangeNotifier {
  // Business logic terpisah
}
```

</details>

<details>
<summary>
🔥 <strong>Lanjutan (Advanced Version)</strong>
</summary>

### Fitur:
- Clean Architecture
- Dependency Injection
- API integration (Mock/Real)
- Unit & Widget testing
- Firebase Integration
- Bloc/Cubit state management

```dart
// Contoh clean architecture
@injectable
class LoginUseCase {
  // Use case pattern
}
```

</details>

## 🛠️ Setup & Installation

### Prerequisites:
- Flutter SDK (3.x atau lebih baru)
- Dart SDK
- IDE (VS Code/Android Studio)

### Langkah instalasi:

```bash
# Clone repository ini
git clone https://github.com/your-username/flutter-login-app.git

# Masuk ke directory project
cd flutter-login-app

# Install dependencies
flutter pub get

# Run project
flutter run
```

## 📁 Struktur Project

```
lib/
├── models/
│   └── user_model.dart
├── pages/
│   ├── login_page.dart
│   ├── register_page.dart
│   └── dashboard_page.dart
├── services/
│   └── auth_service.dart
├── utils/
│   └── validators.dart
└── main.dart
```

## 🎨 Customization

### Warna Theme:
```dart
const primaryColor = Color(0xFF6C63FF);
const secondaryColor = Color(0xFF4A44B8);
```

### Font:
Project menggunakan font default Flutter, bisa diganti dengan:
- Poppins
- Inter
- Atau font custom

## 🚀 Fitur yang Bisa Ditambahkan

- [ ] **Google Sign-In**
- [ ] **Facebook Login** 
- [ ] **Biometric Authentication**
- [ ] **Forgot Password**
- [ ] **Email Verification**
- [ ] **Dark Mode**
- [ ] **Multi-language Support**

## 📝 Learning Checklist

### Basic Concepts:
- [ ] Understanding Widget Tree
- [ ] State Management basics
- [ ] Form Validation
- [ ] Navigation

### Intermediate:
- [ ] Custom Widgets
- [ ] API Integration
- [ ] Local Storage
- [ ] Error Handling

### Advanced:
- [ ] Testing (Unit/Widget)
- [ ] CI/CD
- [ ] Performance Optimization
- [ ] Advanced State Management

## 🤝 Contributing

Ingin berkontribusi? Silakan:
1. Fork project ini
2. Buat feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit changes (`git commit -m 'Add some AmazingFeature'`)
4. Push ke branch (`git push origin feature/AmazingFeature`)
5. Open Pull Request

## 📞 Butuh Bantuan?

### Common Issues:
<details>
<summary>🚧 Error pada flutter pub get</summary>

Solution:
```bash
flutter clean
flutter pub get
```
</details>

<details>
<summary>📱 Emulator tidak terdeteksi</summary>

Solution:
```bash
flutter doctor
# Pastikan emulator running atau device terhubung
```
</details>

<details>
<summary>🔧 Build failed</summary>

Solution:
- Pastikan Flutter SDK updated
- Check dependencies compatibility
- Clean project: `flutter clean`
</details>

## 🎉 Selamat!

Anda telah menyelesaikan setup project! Sekarang pilih salah satu:

### 🎯 Mulai Coding:
```bash
# Buka di VS Code
code .

# Atau Android Studio
android-studio .
```

### 📚 Pelajari Lebih Lanjut:
- [Flutter Documentation](https://flutter.dev/docs)
- [Dart Language Tour](https://dart.dev/guides/language/language-tour)
- [Provider State Management](https://pub.dev/packages/provider)

---

**⭐ Jangan lupa star repository ini jika membantu!**

**💡 Punya pertanyaan? Open an issue atau DM saya!**

Happy Coding! 🚀

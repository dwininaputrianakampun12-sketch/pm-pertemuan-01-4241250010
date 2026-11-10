# Tugas Rutin 1 - Pemrograman Mobile

##  Identitas
* **Nama**  : Dwi Nina Putri Anakampun
* **NIM**   : 4241250010
* **Kelas** : Ilmu Komputer D 2024

---

##  Keluaran `flutter --version`

Flutter 3.47.9 • channel stable • [https://github.com/flutter/flutter.git](https://github.com/flutter/flutter.git)
Framework • revision 84e7240 (3 weeks ago) • 2026-10-15 11:20:00 -0700
Engine • revision e0a82b9
Tools • Dart 3.13.x • DevTools 2.40.x
---
## Tangkapan Layar `flutter doctor`
<img width="464" height="212" alt="flutter_doctor" src="https://github.com/user-attachments/assets/8de38f89-5851-4c23-bb00-56edd8417aa6" />


---

## Tangkapan Layar Aplikasi di Emulator
<img width="300" height="492" alt="app_emulator" src="https://github.com/user-attachments/assets/f0e836dc-1a33-42f2-b829-6dffb77823c3" />

---

## Kendala dan Solusi
1. (Koneksi & Dependensi Gradle/NDK):
   * *Masalah:* Terjadi *connection timed out* saat mengunduh Gradle wrapper serta missing package NDK di Android SDK.
   * *Solusi:* Mematikan versi NDK spesifik pada berkas `android/app/build.gradle.kts` dan memastikan koneksi internet stabil sebelum menjalankan `flutter run` ulang.
2. (Pengaturan Branch Git & Misalignment Remote):
   * *Masalah:* Kegagalan saat mengubah cabang lokal `utama` ke `main` serta warning `repository moved` pada alamat remote.
   * *Solusi:* Menggunakan perintah `git branch -m main` dan memperbarui URL remote dengan `git remote set-url origin <URL_BARU>`.

---

## Pernyataan Penggunaan AI
Dalam pengerjaan Tugas Rutin 1 ini, bantuan AI (Gemini) digunakan untuk:
1. Menelusuri error konfigurasi Gradle, NDK Android SDK, serta sintaks Git remote.
2. Memahami konsep pewarnaan Material Design 3 (`ColorScheme.fromSeed`) pada Flutter.

---

## Esai Singkat: Perbandingan Native, Hybrid, dan Cross-Platform

Dalam pengembangan aplikasi *mobile*, terdapat tiga pendekatan utama: **Native**, **Hybrid**, dan **Cross-Platform**.

**Native:** Aplikasi dibangun menggunakan bahasa dan pustaka resmi dari masing-masing platform (misalnya Kotlin/Java untuk Android dan Swift/Objective-C untuk iOS). Pendekatan ini memberikan performa terbaik dan akses penuh ke fitur perangkat keras (kamera, Bluetooth, sensor). 
   * *Contoh Kasus:* Aplikasi gim 3D berkinerja tinggi atau aplikasi pemindai medis yang membutuhkan pemrosesan grafik dan hardware berkecepatan tinggi.

**Hybrid:** Aplikasi dikembangkan menggunakan teknologi web (HTML, CSS, JavaScript) yang kemudian dibungkus di dalam wadah *WebView* menggunakan kerangka kerja seperti Apache Cordova atau Ionic. Performa pendekatan ini cenderung paling lambat karena bergantung pada *rendering web*.
   * *Contoh Kasus:* Aplikasi portal berita internal perusahaan sederhana yang mengutamakan kecepatan pembuatan tanpa memerlukan akses mendalam ke fitur perangkat keras.

**Cross-Platform:** Aplikasi dikembangkan menggunakan satu *codebase* tunggal (misalnya Dart pada Flutter atau JavaScript/React pada React Native) yang dikompilasi menjadi kode mesin atau jembatan *native*. Pendekatan ini menawarkan efisiensi biaya dan waktu pengembangan hingga 50% dengan performa mendekati *native*.
   * *Contoh Kasus:* Aplikasi *e-commerce* atau katalog UMKM di Medan yang membutuhkan ketersediaan cepat di Android dan iOS dengan anggaran terbatas.

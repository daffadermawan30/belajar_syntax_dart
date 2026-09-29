# Belajar Dasar Dart

Repository ini berisi latihan dasar bahasa pemrograman **Dart**. Project ini dibuat untuk mempelajari syntax dan konsep dasar Dart.

## Materi yang Dipelajari

Beberapa konsep Dart yang dipelajari pada latihan ini:

* Function
* Variable dan tipe data
* String interpolation
* Null Safety
* Null-aware operator
* `final`
* `const`
* `late`
* List
* Set
* Map

---

## Function

Function digunakan untuk mengelompokkan kode yang dapat dijalankan ketika function tersebut dipanggil.

```dart
void sayHello() {
  print('Hello Adventurer!');
  print('Start the game');
}
```

---

## Variable dan Tipe Data

Variable merupakan tempat untuk menyimpan data.

Format dasar deklarasi variable pada Dart:

```dart
Type namaVariable = value;
```

Contoh:

```dart
String gameName = 'The Legend of Zelda';
int gameVersion = 1;
double gameRating = 4.0;
bool isNewGame = false;
```

Beberapa tipe data dasar yang digunakan:

| Tipe     | Kegunaan                         | Contoh          |
| -------- | -------------------------------- | --------------- |
| `String` | Menyimpan teks                   | `'Zelda'`       |
| `int`    | Menyimpan bilangan bulat         | `10`            |
| `double` | Menyimpan bilangan desimal       | `4.5`           |
| `bool`   | Menyimpan nilai benar atau salah | `true`, `false` |

Nilai variable dapat diperbarui selama tipe datanya sesuai.

```dart
double gameRating = 4.0;

gameRating = 4.5;
```

---

## String Interpolation

String interpolation digunakan untuk memasukkan nilai variable ke dalam sebuah String.

```dart
String gameName = 'The Legend of Zelda';

print('Game name: $gameName');
```

Untuk expression yang lebih kompleks dapat menggunakan `${}`.

```dart
int lives = 3;
int score = 26000;

print('Total score: ${score * lives}');
```

Method juga dapat digunakan di dalam string interpolation.

```dart
print('Game name: ${gameName.toUpperCase()}');
```

---

## Null Safety

Dart memiliki fitur **null safety**.

Secara default sebuah variable tidak dapat memiliki nilai `null`.

```dart
String playerName = 'Link';
```

Jika sebuah variable diperbolehkan memiliki nilai `null`, tambahkan `?` setelah tipe datanya.

```dart
String? characterName;

characterName = null;
characterName = 'Daffa';
```

Ketika variable nullable ingin menggunakan method, dapat menggunakan `?.`.

```dart
characterName?.toUpperCase();
```

---

## Null-Aware Operator

Operator `??` digunakan untuk memberikan nilai alternatif apabila nilai sebelumnya adalah `null`.

```dart
String playerName = characterName ?? 'Link';
```

Jika `characterName` bernilai `null`, maka:

```text
playerName = Link
```

Jika `characterName` memiliki nilai, maka nilai tersebut yang akan digunakan.

---

## Final

`final` digunakan untuk membuat variable yang hanya dapat diberikan nilai satu kali.

```dart
final String categoryGame = 'RPG';
```

Nilainya tidak dapat diubah kembali.

```dart
// Error
categoryGame = 'FPS';
```

---

## Const

`const` digunakan untuk membuat nilai konstan yang sudah diketahui ketika proses compile.

```dart
const consoleGame = 'Nintendo Entertainment System';
```

Berbeda dengan `final`, nilai `const` harus sudah dapat ditentukan sebelum program dijalankan.

---

## Late

Keyword `late` digunakan ketika variable non-nullable akan diinisialisasi setelah deklarasinya.

```dart
late String idPlayer;
```

Contoh:

```dart
void generateIdPlayer() {
  idPlayer = '$playerName-${DateTime.now().millisecondsSinceEpoch}';
}
```

---

## List

`List` digunakan untuk menyimpan sekumpulan data secara berurutan.

```dart
List<String> listGameNES = [
  'Super Mario Bros',
  'The Legend of Zelda',
  'Donkey Kong',
];
```

Data baru dapat ditambahkan menggunakan `.add()`.

```dart
listGameNES.add('Mega Man');
```

---

## Set

`Set` digunakan untuk menyimpan kumpulan data unik sehingga tidak terdapat data duplikat.

```dart
Set<String> setGameNES = {
  'Super Mario Bros',
  'The Legend of Zelda',
  'Donkey Kong',
  'Mega Man',
};
```

Jika nilai yang sama ditambahkan kembali, Set tidak akan membuat data duplikat.

---

## Map

`Map` menyimpan data dalam bentuk **key-value**.

```dart
Map<String, dynamic> gameDetails = {
  'releaseDate': 1986,
  'developer': 'Nintendo',
};
```

Pada contoh tersebut:

```text
releaseDate → 1986
developer   → Nintendo
```

`String` digunakan sebagai tipe key, sedangkan `dynamic` memungkinkan value memiliki tipe data yang berbeda.

---

## Menjalankan Program

Pastikan Dart SDK atau Flutter sudah terinstall.

Cek instalasi Dart:

```bash
dart --version
```

Kemudian jalankan file Dart:

```bash
dart run nama_file.dart
```

Contoh:

```bash
dart run main.dart
```

---

> Repository ini merupakan bagian dari proses belajar dalam matakuliah mobile programming

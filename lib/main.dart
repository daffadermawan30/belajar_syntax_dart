void sayHello() {
  // menampilkan teks langsung
  print('Hello Adventurer!');
  print('Start the game');

  /*
  // variable atau sebuah wadah tempat menyimpan data
  // cara deklarasi variable pada Dart
  // Type namaVariable = value;
  */
  String gameName =
      'The Legend of Zelda'; // type string untuk tampilkan teks atau kalimat
  int gameVersion = 1; // type int untuk tampilkan angka
  double gameRating = 4.0; // type double untuk tampilkan angka desimal
  bool isNewGame = false; // type bool untuk tampilkan true/false

  gameRating = 4.5; // value dapat diperbarui tanpa harus mendeklarasikan ulang tipe data diawal

  int lives = 3;
  int score = 26000;
  /*
  //string interpolation atau menggabungkan teks dengan variabel
  // cara menggunakan string interpolation pada Dart dengan menambahkan $ diikuti nama variabel yang ingin ditampilkan
  */
  print('Game name: $gameName');
  print('Game version: $gameVersion');
  print('Game rating: $gameRating');
  print('Is new game: $isNewGame');

  /*
  // untuk menampilkan ekspresi yang lebih kompleks kita bisa menggunakan kurung kurawal {}
*/
  print('total score: ${score * lives}');

  // pada tipe string kita bisa juga gunakan dot method
  print('Game name: ${gameName.toUpperCase()}');
}

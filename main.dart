/*
  syntax dart &
  catatan pemrograman
  (biar saya tak lupa) :>
*/

void sayHello() {
  // menampilkan teks langsung
  print('Hello Adventurer!');
  print('Start the game');

  /*
    variable atau sebuah wadah tempat menyimpan data
    cara deklarasi variable pada Dart
    Type namaVariable = value;
  */
  String gameName =
      'The Legend of Zelda'; // type string untuk tampilkan teks atau kalimat
  int gameVersion = 1; // type int untuk tampilkan angka
  double gameRating = 4.0; // type double untuk tampilkan angka desimal
  bool isNewGame = false; // type bool untuk tampilkan true/false

  /*
    value dapat diperbarui tanpa harus mendeklarasikan ulang tipe data diawal
    selama value tidak diubah dengan tipe data yang berbeda seperti: gameRating = 'empat koma lima'
  */
  gameRating = 4.5;

  int lives = 3;
  int score = 26000;
  /*
    string interpolation atau menggabungkan teks dengan variabel
    cara menggunakan string interpolation pada Dart dengan menambahkan $ diikuti nama variabel yang ingin ditampilkan
  */
  print('Game name: $gameName');
  print('Game version: $gameVersion');
  print('Game rating: $gameRating');
  print('Is new game: $isNewGame');
  print('total score: ${score * lives}'); //untuk menampilkan ekspresi yang lebih kompleks kita bisa menggunakan kurung kurawal {}
  print('Game name: ${gameName.toUpperCase()}'); // pada tipe string kita bisa juga gunakan dot method untuk mengakses method bawaan

  // berbeda dengan javascript dart tidak bisa memberikan nilai null pada variabel tanpa gunakan keyword '?' atau disebut null safety
  String? namecharacter;
  namecharacter = null;
  namecharacter = 'Daffa';
  namecharacter?.toUpperCase(); // kita tak boleh langsung gunakan .method tanpa '?' di depannya sebagai tanda bahwa variabel tersebut bisa null

  // null aware operator
  String playerName1 =
      namecharacter ??
      'Link'; // jika namecharacter null maka playerName akan bernilai 'Link'
  print(playerName1);

  // sebaliknya jika kita yakin nilainya tidak null kita bisa gunakan '!'
  String playerName2 = playerName1!;
  print(playerName2!.toUpperCase());

  /*
    final, variabel yang tidak dapat diubah nilainya setelah dideklarasikan
  */
  final String categoryGame = 'RPG';
  // categoryGame = 'FPS'; => error karena final hanya bisa diinisialisasi sekali ketika program pertama kali dijalankan

  /*
    const, tipe variable yang nilai nya wajib di inisialisasi sebelum program dijalankan
  */
  const consoleGame = 'Nintendo Entertainment System';

  /*
    late, kebalikan dari const, late hanya bisa diinisialisasi setelah program dijalankan
  */
  late String idPlayer;

  /*
    void generateIdPlayer() {
      idPlayer = '$playerName1-${DateTime.now().millisecondsSinceEpoch}';
    }
    fungsi sederhana yang berfungsi untuk simulasi menghasilkan id unik player
  */

  /*
    List, tipe data yang menyimpan data dalam bentuk array
  */
  List<String> listGameNES = [
    'Super Mario Bros',
    'The Legend of Zelda',
    'Donkey Kong',
  ];

  listGameNES.add('Mega Man'); // .add() sebuah fungksi bawaan dari List yang di gunakan untuk menambahkan data baru ke dalam list
  print(listGameNES);

  /*
    Set adalah tipe data yang menyimpan data dalam bentuk array yang tidak berurutan dan tidak ada duplikat
  */
  Set<String> setGameNES = {
    'Super Mario Bros',
    'The Legend of Zelda',
    'Donkey Kong',
    'Mega Man',
    //'Mega Man' ga bisa ditambahkan lagi karena sudah ada di set
  };

  /*
    map<String, dynamic>
    Map, tipe data yang menyimpan data dalam bentuk key dan value di sini key nya adalah string dan value nya dynamic
    mirip seperti format pada json
  */
  Map<String, dynamic> gameDetails = {
    'releaseDate': 1986,
    'developer': 'Nintendo',
  };
}

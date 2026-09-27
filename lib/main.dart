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
  // selama value tidak diubah dengan tipe data yang berbeda seperti: gameRating = 'empat koma lima'

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

  // berbeda dengan javascript dart tidak bisa memberikan nilai null pada variabel tanpa gunakan keyword '?'
  String? namecharacter;
  namecharacter = null;
  namecharacter = 'Daffa';
  namecharacter?.toUpperCase(); // kita tak boleh langsung gunakan .method tanpa '?' di depannya

  // null aware operator
  String playerName1 =
      namecharacter ??
      'Link'; // jika namecharacter null maka playerName akan bernilai 'Link'
  print(playerName1);

  // sebaliknya jika kita yakin nilainya tidak null kita bisa gunakan '!'
  String playerName2 = playerName1!;
  print(playerName2!.toUpperCase());

  // final
  /*
  variabel yang tidak dapat diubah nilainya setelah dideklarasikan
  */
  final String categoryGame = 'RPG';
  // categoryGame = 'FPS'; => error karena final hanya bisa diinisialisasi sekali ketika program pertama kali dijalankan

  // const
  /*
  tipe variable yang nilai nya wajib di inisialisasi sebelum program dijalankan
  */
  const consoleGame = 'Nintendo Entertainment System';

  // late
  /*
  kebalikan dari const, late hanya bisa diinisialisasi setelah program dijalankan
  */
  late String idPlayer;
  void generateIdPlayer() {
    idPlayer = '$playerName1-${DateTime.now().millisecondsSinceEpoch}';
  }

  // list
  /*
  List adalah tipe data yang menyimpan data dalam bentuk array
  */
  List<String> listGameNES = [
    'Super Mario Bros',
    'The Legend of Zelda',
    'Donkey Kong',
  ];

  listGameNES.add('Mega Man');
  print(listGameNES);

  // set
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

  //map<String, dynamic>
  /*
    Map adalah tipe data yang menyimpan data dalam bentuk key dan value di sini key nya adalah string dan value nya dynamic
    mengikuti format json yang biasa digunakan
  */
  Map<String, dynamic> gameDetails = {
    'releaseDate': 1986,
    'developer': 'Nintendo',
  };
}

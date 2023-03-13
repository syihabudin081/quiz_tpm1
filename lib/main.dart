// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

void main() => runApp(const QuizApp());

class QuizApp extends StatelessWidget {
  const QuizApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz TPM IF-B',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    DataDiri(),
    const Segitiga(),
    LayangLayang()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Data Diri',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.text_rotation_angledown),
            label: 'Segitiga',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.diamond),
            label: 'Layang-Layang',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}

class Segitiga extends StatefulWidget {
  const Segitiga({Key? key}) : super(key: key);

  @override
  _SegitigaState createState() => _SegitigaState();
}

class _SegitigaState extends State<Segitiga> {
  TextEditingController sisiAController = TextEditingController();
  TextEditingController sisiBController = TextEditingController();
  TextEditingController sisiCController = TextEditingController();
  TextEditingController alasController = TextEditingController();
  TextEditingController tinggiController = TextEditingController();
  double luas = 0;
  double keliling = 0;

  void hitungKeliling() {
    double sisiA = double.parse(sisiAController.text);
    double sisiB = double.parse(sisiBController.text);
    double sisiC = double.parse(sisiCController.text);

    keliling = sisiA + sisiB + sisiC;
  }

  void hitungLuas() {
    double alas = double.parse(alasController.text);
    double tinggi = double.parse(tinggiController.text);

    luas = (alas * tinggi) / 2;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segitiga'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              controller: sisiAController,
              decoration: const InputDecoration(labelText: 'Sisi A'),
            ),
            TextFormField(
              controller: sisiBController,
              decoration: const InputDecoration(labelText: 'Sisi B'),
            ),
            TextFormField(
              controller: sisiCController,
              decoration: const InputDecoration(labelText: 'Sisi C'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  hitungKeliling();
                });
              },
              child: const Text('Hitung'),
            ),
            Text('Keliling: $keliling'),
            SizedBox(height: 20),
            TextFormField(
              controller: alasController,
              decoration: const InputDecoration(labelText: 'Alas'),
            ),
            TextFormField(
              controller: tinggiController,
              decoration: const InputDecoration(labelText: 'Tinggi'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  hitungLuas();
                });
              },
              child: const Text('Hitung'),
            ),
            const SizedBox(height: 16),
            Text('Luas: $luas'),
          ],
        ),
      ),
    );
  }
}

class DataDiri extends StatelessWidget {
  final String name = "Syihabudin Rahmat Ramadhan";
  final int age = 20;
  final String hobby = "Main Game";
  final String kelas = "IF-B";
  final int nim = 123200081;
  final String imageUrl = "https://media.licdn.com/dms/image/D5603AQGbyi90qBrfuQ/profile-displayphoto-shrink_400_400/0/1678707486881?e=1684368000&v=beta&t=WLvLsK6HL92vtu0KFiOK9t1FhpltSuUA6Rrju19oMYI";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Biodata'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage(imageUrl),
            ),
            SizedBox(height: 20),
            Text(
              name,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
             SizedBox(height: 20),
            Text(
              'NIM : $nim',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Age: $age',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Kelas: $kelas',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Hobby: $hobby',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

class LayangLayang extends StatefulWidget {
  const LayangLayang({Key? key}) : super(key: key);

  @override
  _LayangLayangState createState() => _LayangLayangState();
}

class _LayangLayangState extends State<LayangLayang> {
  TextEditingController diagonal1Controller = TextEditingController();
  TextEditingController diagonal2Controller = TextEditingController();
  TextEditingController sisiABController = TextEditingController();
  TextEditingController sisiBCController = TextEditingController();
  TextEditingController sisiCDController = TextEditingController();
  TextEditingController sisiDAController = TextEditingController();
  double luas = 0;
  double keliling = 0;

  void hitungKeliling() {
    double sisiAB = double.parse(sisiABController.text);
    double sisiBC = double.parse(sisiBCController.text);
    double sisiCD = double.parse(sisiCDController.text);
    double sisiDA = double.parse(sisiDAController.text);

    keliling = sisiAB + sisiBC + sisiCD + sisiDA;
  }

  void hitungLuas() {
    double diagonal1 = double.parse(diagonal1Controller.text);
    double diagonal2 = double.parse(diagonal2Controller.text);
    luas = (diagonal1 * diagonal2) / 2;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layang-Layang'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              controller: sisiABController,
              decoration: const InputDecoration(labelText: 'Sisi AB'),
            ),
            TextFormField(
              controller: sisiBCController,
              decoration: const InputDecoration(labelText: 'Sisi BC'),
            ),
            TextFormField(
              controller: sisiCDController,
              decoration: const InputDecoration(labelText: 'Sisi CD'),
            ),
            TextFormField(
              controller: sisiDAController,
              decoration: const InputDecoration(labelText: 'Sisi DA'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  hitungKeliling();
                });
              },
              child: const Text('Hitung'),
            ),
            Text('Keliling: $keliling'),
            SizedBox(height: 16),
            TextFormField(
              controller: diagonal1Controller,
              decoration: const InputDecoration(labelText: 'Diagonal 1'),
            ),
            TextFormField(
              controller: diagonal2Controller,
              decoration: const InputDecoration(labelText: 'Diagonal 2'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  hitungLuas();
                });
              },
              child: const Text('Hitung'),
            ),
            Text('Luas: $luas'),
          ],
        ),
      ),
    );
  }
}

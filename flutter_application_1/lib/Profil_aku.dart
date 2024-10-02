import 'package:flutter/material.dart';

class ProfilAku extends StatelessWidget {
  const ProfilAku({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profil Mahasiswa"),
        backgroundColor: const Color.fromARGB(255, 102, 183, 58), // Sesuai dengan tema
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Card(
            margin: const EdgeInsets.all(16.0),
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Foto Profil
                  const CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/Maula.jpg'), // Pastikan gambar sudah ada di folder assets
                  ),
                  const SizedBox(height: 20),
                  // Nama Mahasiswa
                  const Text(
                    'Maula Mungafatul Munawaroh',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  // NIM
                  const Text(
                    'NIM: 212221030',
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  // Program Studi
                  const Text(
                    'Program Studi: Informatika',
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  // Fakultas
                  const Text(
                    'Fakultas: FMIKOM',
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  // Nomor Telepon
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.phone, color: Colors.green),
                      SizedBox(width: 10),
                      Text(
                        '082136190369',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  // Alamat
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.home, color: Colors.green),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          'Jaya Giri RT 01/ RW 02, Bojong, Kawunganten',
                          style: TextStyle(fontSize: 18),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // Tombol untuk melihat info lebih lanjut
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Informasi Tambahan'),
                            content: const Text('Ini adalah aplikasi sederhana untuk menampilkan profil mahasiswa.'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('Tutup'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 102, 183, 58), // Sesuaikan dengan warna tema
                    ),
                    child: const Text('Lihat Info Lebih Lanjut'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

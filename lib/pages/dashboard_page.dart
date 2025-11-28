import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controllers/auth_controller.dart';
import '../controllers/jadwal_controller.dart';
import '../models/jadwal_kuliah.dart';
import 'login_page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthController>(context);
    final jadwalController = Provider.of<JadwalController>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard Jadwal Kuliah"),
        actions: [
          IconButton(
            onPressed: () {
              auth.logout();
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => const LoginPage()),
              );
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => _showJadwalDialog(context, jadwalController),
      ),

      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            child: Text(
              "Selamat datang, ${auth.currentUser?.fullName ?? "User"}",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: jadwalController.jadwalList.length,
              itemBuilder: (context, index) {
                final j = jadwalController.jadwalList[index];
                return Card(
                  child: ListTile(
                    title: Text(j.mataKuliah),
                    subtitle: Text(
                      "${j.hari}, ${j.jam}\n"
                      "Ruang: ${j.ruang}\n"
                      "Dosen: ${j.dosen}",
                    ),
                    isThreeLine: true,
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.edit, color: Colors.blue),
                          onPressed: () => _showJadwalDialog(
                            context,
                            jadwalController,
                            jadwal: j,
                            index: index,
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () => jadwalController.deleteJadwal(index),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _showJadwalDialog(
    BuildContext context,
    JadwalController controller, {
    JadwalKuliah? jadwal,
    int? index,
  }) {
    final matkulC = TextEditingController(text: jadwal?.mataKuliah ?? "");
    final hariC = TextEditingController(text: jadwal?.hari ?? "");
    final jamC = TextEditingController(text: jadwal?.jam ?? "");
    final ruangC = TextEditingController(text: jadwal?.ruang ?? "");
    final dosenC = TextEditingController(text: jadwal?.dosen ?? "");

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(jadwal == null ? "Tambah Jadwal" : "Edit Jadwal"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: matkulC,
              decoration: const InputDecoration(labelText: "Mata Kuliah"),
            ),
            TextField(
              controller: hariC,
              decoration: const InputDecoration(labelText: "Hari"),
            ),
            TextField(
              controller: jamC,
              decoration: const InputDecoration(
                labelText: "Jam (07:00 - 09:40)",
              ),
            ),
            TextField(
              controller: ruangC,
              decoration: const InputDecoration(labelText: "Ruang"),
            ),
            TextField(
              controller: dosenC,
              decoration: const InputDecoration(labelText: "Dosen"),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Batal"),
          ),
          ElevatedButton(
            child: const Text("Simpan"),
            onPressed: () {
              if (matkulC.text.isEmpty) return;

              final newData = JadwalKuliah(
                mataKuliah: matkulC.text,
                hari: hariC.text,
                jam: jamC.text,
                ruang: ruangC.text,
                dosen: dosenC.text,
              );

              if (jadwal == null) {
                controller.addJadwal(newData);
              } else {
                controller.updateJadwal(index!, newData);
              }

              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ScaffoldLearn extends StatelessWidget {
  const ScaffoldLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Html Body
    return Scaffold(
      //işlevsel uygulama çubuğu
      appBar: AppBar(),
      //Body içi bağımsız ekleme alanı
      body: const Text("Data"),
      //Sayfanın alt tarafında etkileşimli aksiyon çubuğu
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.leaderboard), label: "Tunç"),
        BottomNavigationBarItem(icon: Icon(Icons.leaderboard), label: "Tunç"),
      ]),
      //Sayfa üstünde bulunan bağımsız etkileşimli buton
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      //yatay olarak Açılabilir etkileşim alanı
      drawer: const Drawer(),
      //Aşağıdan açılabilir etkileşim alanı
      bottomSheet: BottomSheet(
        builder: (context) {
          return const Text("A");
        },
        onClosing: () {},
      ),
    );
  }
}

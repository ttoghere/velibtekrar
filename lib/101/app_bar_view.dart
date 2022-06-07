import 'package:flutter/material.dart';

class AppBarLearnView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //Uygulama çubuğu başına Widget ekleme
        leading: Container(),
        //Uygulama çubuğu başlık ekleme
        title: const Text("İsim"),
        //Uygulama çubuğu alanı düzenleme
        flexibleSpace: Container(color: Colors.red),
        //Uygulama çubuğu sonuna aksiyon ekleme
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.save)),
        ],
        //Geri hareket tuşu iptali
        automaticallyImplyLeading: false,
      ),
      body: Column(),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}

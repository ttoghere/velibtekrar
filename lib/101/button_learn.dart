import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Platform üzerine eklenen ve sadece child ile ekleme alan buton
            TextButton(
              //Fonksiyon ekleme parametresi
              onPressed: () {},
              child: const Text("Text"),
              //Stil için eklenebilir ortak widget
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith(
                  (states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.green;
                    } else if (states.contains(MaterialState.dragged)) {
                      Colors.red;
                    }
                    return Colors.yellow;
                  },
                ),
              ),
            ),
            //Text buttonun varsayılan ikon eklenen hali
            TextButton.icon(
              onPressed: () {},
              //Stil için eklenebilir kişiselleştirilmiş widget
              style: TextButton.styleFrom(
                primary: Colors.red,
                backgroundColor: Colors.white,
                //Buton şekli düzenleme
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ),
              icon: const Icon(Icons.add),
              label: const Text("ikonlu"),
            ),
            //Sayfa üstü süzülen buton
            FloatingActionButton(
              onPressed: () {},
              child: const Text("FAB"),
            ),
            //Özelleştirilmiş klasik buton
            ElevatedButton(
              onPressed: () {},
              child: const Text("Elevated"),
            ),
            //Soldan ikonlu elevated
            ElevatedButton.icon(
              icon: const Icon(Icons.leak_remove_outlined),
              onPressed: () {},
              label: const Text("Elevated"),
            ),
            //Dış kenarlık bazlı oluşturulan buton
            OutlinedButton(
              onPressed: () {},
              child: const Text("Elevated"),
            ),
            //Soldan ikonlu outlined
            OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text("Selma"))
          ],
        ),
      ),
    );
  }
}

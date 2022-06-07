import 'package:flutter/material.dart';

class TextLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${ProjectTexts.name}, Buy the best one",
              //Kullanılacak olan satır sayısı
              maxLines: 2,
              //Yetersiz alan durumunda yapılacaklar
              overflow: TextOverflow.ellipsis,
              //Metin hizalama
              textAlign: TextAlign.center,
              style: ProjectStyles.welcomeStyle,
              // //Responsive ölçek ayarı
              // textScaleFactor: 0.8,
            ),
            Text(
              "${ProjectTexts.name} = ${ProjectTexts. name.length}, Buy the best one",
              //Kullanılacak olan satır sayısı
              maxLines: 2,
              //Yetersiz alan durumunda yapılacaklar
              overflow: TextOverflow.ellipsis,
              //Metin hizalama
              textAlign: TextAlign.center,
              style: ProjectStyles.welcomeStyle,
              // //Responsive ölçek ayarı
              // textScaleFactor: 0.8,
            ),
            Text(
              "${ProjectTexts.name}, Buy the best one",
              //Kullanılacak olan satır sayısı
              maxLines: 2,
              //Yetersiz alan durumunda yapılacaklar
              overflow: TextOverflow.ellipsis,
              //Metin hizalama
              textAlign: TextAlign.center,
              //Hazır tema stili işleme
              style: Theme.of(context).textTheme.headline1!.copyWith(
                    color: ProjectColors.welcomeColor,
                  ),
              // //Responsive ölçek ayarı
              // textScaleFactor: 0.8,
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = TextStyle(
    //Kelimelere arası boşluk
    wordSpacing: 2,
    //Harfler arası boşluj
    letterSpacing: 2,
    //Boyut
    fontSize: 20,
    //Hacim
    fontWeight: FontWeight.bold,
    //Görünüm
    decoration: TextDecoration.underline,
    //Kullanım stili
    fontStyle: FontStyle.italic,
    //Renk
    color: ProjectColors.welcomeColor,
  );
}

class ProjectColors {
  static Color welcomeColor = Colors.red;
}

class ProjectTexts {
  static String name = "Tunç";
}

import 'package:flutter/material.dart';
import 'package:velibtekrar/101/text_learn.dart';

class ContainerSizedBox extends StatelessWidget {
  const ContainerSizedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //Containerın sadece child,width,height özelliklerine sahipt versiyonu
          const SizedBox(),
          //Boş alan oluşturucu
          const SizedBox.shrink(),
          //Otomatik kare olarak oluşan sizedbox -- boyut ayarlanabilir
          const SizedBox.square(),
          //Merkezi yerleşim sağlar
          Center(
            //Çok özellikli kapsayıcı
            child: Container(
                //Genişlik ayarı
                width: 50,
                //Yükseklik ayarı
                height: 50,
                // //Renk ayarı (Decoration kullanılmadığında)
                // color: ProjectColors.welcomeColor,
                //Responsive olarak genişlik ve yükseklik
                constraints: const BoxConstraints(
                  maxHeight: 150,
                  minHeight: 50,
                  minWidth: 50,
                  maxWidth: 150,
                ),
                //iç ve dış boşluk ayarı
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.only(top: 20),
                //Dekorasyon ayarı
                decoration: ProjectUtility.boxDecoration),
          ),
        ],
      ),
    );
  }
}

class ProjectUtility {
  static final boxDecoration = BoxDecoration(
    color: ProjectColors.welcomeColor,
    // //Sahip olunan şekil seçimi
    // shape: BoxShape.circle,
    //Gölge ayarı
    boxShadow: const [
      BoxShadow(
        spreadRadius: 20,
        blurRadius: 15,
        color: Colors.red,
      ),
      BoxShadow(
        spreadRadius: 30,
        blurRadius: 15,
        color: Colors.black,
      ),
    ],
    //Kenarlık belirleme
    border: Border.all(
      color: Colors.white,
      width: 3,
    ),
    //Kenar eğimi sağlar
    borderRadius: BorderRadius.circular(20),
    //Gradyan çizimi sağlar
    gradient: const RadialGradient(
      tileMode: TileMode.mirror,
      stops: [0.0, 0.6],
      focal: Alignment.center,
      colors: [Colors.red, Colors.white],
    ),
  );
}

class ProjectContainerDec extends BoxDecoration {
  ProjectContainerDec()
      : super(
          color: ProjectColors.welcomeColor,
          //Sahip olunan şekil seçimi
          shape: BoxShape.circle,
          //Gölge ayarı
          boxShadow: const [
            BoxShadow(
              spreadRadius: 20,
              blurRadius: 15,
              color: Colors.red,
            ),
            BoxShadow(
              spreadRadius: 30,
              blurRadius: 15,
              color: Colors.black,
            ),
          ],
          //Kenarlık belirleme
          border: Border.all(
            color: Colors.white,
            width: 3,
          ),
          //Kenar eğimi sağlar
          borderRadius: BorderRadius.circular(20),
          //Gradyan çizimi sağlar
          gradient: const RadialGradient(
            tileMode: TileMode.mirror,
            stops: [0.0, 0.6],
            focal: Alignment.center,
            colors: [Colors.red, Colors.white],
          ),
        );
}

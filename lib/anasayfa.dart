import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  var toplamList = <String>[];
  var deger = "";
  var sonuc = 0;
  var tfController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HESAP MAKİNESİ",style: TextStyle(fontSize: 40),),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 100,),

            Text(deger),
            Container(
              width: 100,
              height: 50,
              child: TextField(
                textAlign: TextAlign.center,
                controller: tfController,
              ),
            ),

            const SizedBox(height: 150,),

            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  setState(() {
                    deger += "7";
                  });
                }
                    , child: Text("7")),
                ElevatedButton(onPressed: (){
                  setState(() {
                    deger += "8";
                  });
                }
                    , child: Text("8")),
                ElevatedButton(onPressed: (){
                  setState(() {
                    deger += "9";
                  });
                }
                    , child: Text("9")),
              ],
            ),

            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  setState(() {
                    deger += "4";
                  });
                }
                    , child: Text("4")),
                ElevatedButton(onPressed: (){
                  setState(() {
                    deger += "5";
                  });
                }
                    , child: Text("5")),
                ElevatedButton(onPressed: (){
                  setState(() {
                    deger += "6";
                  });
                }
                    , child: Text("6")),
              ],
            ),

            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  setState(() {
                    deger += "1";
                  });
                }
                    , child: Text("1")),
                ElevatedButton(onPressed: (){
                  setState(() {
                    deger += "2";
                  });
                }
                    , child: Text("2")),
                ElevatedButton(onPressed: (){
                  setState(() {
                    deger += "3";
                  });
                }
                    , child: Text("3")),
              ],
            ),

            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  setState(() {
                    deger += "+";
                  });
                }
                    , child: Text("+")),
                ElevatedButton(onPressed: (){
                  setState(() {
                    toplamList = deger.split("+");
                    for (int i = 0; i<toplamList.length; i++) {
                      sonuc += int.parse(toplamList[i]);
                    }
                    tfController.text = "Sonuç : ${sonuc.toString()}";
                    print(sonuc);
                  });
                }
                    , child: Text("=")),
                ElevatedButton(onPressed: (){
                  setState(() {
                    deger = "";
                    sonuc = 0;
                    tfController.text = "";
                  });
                }
                    , child: Icon(Icons.restart_alt))
              ],
            )
          ],
        )
      ),
    );
  }
}

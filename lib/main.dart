import 'package:flutter/material.dart';
import 'makanan.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<Makanan> dataMakanan = Makanan.dataDummy;
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Makanan tradisional"),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(children: [
            Container(
              margin: const EdgeInsets.all(20),
              alignment: Alignment.center,
              child: Text('Daftar Makanan',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
              ),
              Expanded(child: ListView.builder(
                itemCount: dataMakanan.length,
                itemBuilder: (context, index) {
                  return Expanded(
                    child: Container(
                      width: 130,
                      margin: EdgeInsets.only(right: 10),
                      child: Row(
                      children: [
                      Container(width: 130, child: Image.asset("assets/makanan.jpg")),
                      Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text("Nasi Rames",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,),),
                        Text("Rp. 10000"),
                      ],),
                    ),
                    ElevatedButton(onPressed: () {}, child: Text("More")),
                    ],
                    ),
                    ),
                  );
                }
                  )
              )
          ],)
          ),
      ),
    );
  }
}

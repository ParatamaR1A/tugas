import 'package:data_menu_makanan/makanan.dart';
import 'package:flutter/widgets.dart';

class DetailPage extends StatelessWidget{
  Makanan makanan;
  DetailPage(this.makanan,{super.key});

  @override
  Widget build(BuildContext context){
    return Container(child: Text(makanan.nama),);
  }
}
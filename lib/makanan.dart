class Makanan{
  String nama;
  int harga;
  String ?deskripsi;
  String gambar;

  Makanan(this.nama,this.harga,{this.deskripsi, this.gambar='makanan.jpg'});

  static List<Makanan> dataDummy =[
    Makanan("Sate ayam", 15000, deskripsi:"Potongan dagimh ayam tipis tipis yang ditusuk degan batang bambu kecil dan diolah dengan dibakar", gambar:'sate.jpg'),
    Makanan("Pecel", 10000, deskripsi: "Salad tradisional yang disiram saus kacang", gambar:'pecel.jpg' )
  ];
}
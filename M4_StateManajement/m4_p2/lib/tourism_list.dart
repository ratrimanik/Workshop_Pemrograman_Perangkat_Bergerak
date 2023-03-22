import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:m3_pt1/detail_screen.dart';
import 'package:m3_pt1/list_item.dart';
import 'package:m3_pt1/model/tourism_place.dart';
import 'package:m3_pt1/provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';

class TourismList extends StatefulWidget {
  const TourismList({Key? key}) : super(key: key);

  @override
  _TourismListState createState() => _TourismListState();
}

class _TourismListState extends State<TourismList> {
  final List<TourismPlace> tourismPlaceList = [
    TourismPlace(
      name: 'Surabaya Submarine Monument',
      location: 'Jl Pemuda',
      imageAsset: 'assets/images/submarine.jpg',
      hari: 'Senin - Jumat',
      desk:
          'Monumen Kapal Selam, atau disingkat Monkasel, adalah sebuah museum kapal selam yang terdapat di Embong Kaliasin, Genteng, Surabaya. Terletak di pusat kota yaitu di Jalan Pemuda, tepat di sebelah Plaza Surabaya, dan terdapat pintu akses untuk mengakses mal dari dalam monumen. Monumen ini sebenarnya merupakan kapal selam KRI Pasopati 410, salah satu armada Angkatan Laut Republik Indonesia buatan Uni Soviet tahun 1952',
      time: '09.00 - 15.30',
      cost: '30.000',
      gmbr1: 'assets/images/monkasel1.jpg',
      gmbr2: 'assets/images/monkasel2.jpg',
      gmbr3: 'assets/images/monkasel3.jpg',
      gmbr4: 'assets/images/monkasel4.jpg',
    ),
    TourismPlace(
      name: 'Plaza Surabaya',
      location: 'Jl Pemuda',
      imageAsset: 'assets/images/plaza1.jpg',
      hari: 'Every Day',
      desk:
          'Plaza Surabaya (atau biasa disebut dengan nama sebelumnya Delta Plaza) adalah pusat perbelanjaan di Surabaya. Mal ini didirikan pada tahun 1988 dengan penyewa - penyewa yang sudah terkenal sebagai perusahaan besar baik skala nasional maupun internasional',
      time: '09.00 - 22.00',
      cost: '5.000',
      gmbr1: 'assets/images/ps1.jpg',
      gmbr2: 'assets/images/ps2.jpeg',
      gmbr3: 'assets/images/ps3.jpg',
      gmbr4: 'assets/images/ps4.jpg',
    ),
    TourismPlace(
      name: 'Bg Junction',
      location: 'Jl Bubutan',
      imageAsset: 'assets/images/junction.jpg',
      hari: 'Every Day',
      desk:
          'Mal modern dengan pertokoan yang menjual pakaian, barang elektronik, mainan & makanan, plus restoran santai.',
      time: '09.00 - 22.00',
      cost: '5.000',
      gmbr1: 'assets/images/bg1.jpg',
      gmbr2: 'assets/images/bg2.jpeg',
      gmbr3: 'assets/images/bg3.jpg',
      gmbr4: 'assets/images/bg4.jpg',
    ),
    TourismPlace(
      name: 'Tugu Pahlawan',
      location: 'Jl Bubutan',
      imageAsset: 'assets/images/tugu.jpg',
      hari: 'Every Day',
      desk:
          'Tugu Pahlawan adalah sebuah monumen yang menjadi markah tanah Kota Surabaya. Tinggi monumen ini adalah 41,15 meter dan berbentuk lingga atau paku terbalik. Tubuh monumen berbentuk lengkungan-lengkungan (canalures) sebanyak 10 lengkungan, dan terbagi atas 11 ruas. Tinggi, ruas dan canalures mengandung makna tanggal 10, bulan 11, tahun 1945. Suatu tanggal bersejarah, bukan hanya bagi penduduk Kota Surabaya, tetapi juga bagi seluruh Rakyat Indonesia',
      time: '09.00 - 15.30',
      cost: '30.000',
      gmbr1: 'assets/images/tg1.jpg',
      gmbr2: 'assets/images/tg2.jpeg',
      gmbr3: 'assets/images/tg3.jpg',
      gmbr4: 'assets/images/tg4.jpg',
    ),
    TourismPlace(
      name: 'Patung Suro Boyo',
      location: 'Wonokromo',
      imageAsset: 'assets/images/sby.jpg',
      hari: 'Every Day',
      desk:
          'Patung Sura dan Baya (Jawa: Patung Suro lan Boyo) adalah sebuah patung yang merupakan lambang kota Surabaya. Patung ini berada di depan Kebun Binatang Surabaya. Patung ini terdiri atas dua hewan yaitu buaya dan hiu yang menjadi inspirasi nama kota Surabaya: ikan sura (hiu) dan baya (buaya). Patung ini dibangun pada tahun 1988oleh seorang pemahan yang bernama Sigit Margono dengan bahan semen dan di arsitek ii oleh Sutomo kusnadi patung ini bertahan sampai sekarang, terlepas dari kisah dahulu patung ini menjadi lambang keberanian para pemuda kota Surabaya alam mempertahankan daerah kekuasaannya.',
      time: '09.00 - 15.30',
      cost: '30.000',
      gmbr1: 'assets/images/sby1.jpeg',
      gmbr2: 'assets/images/sby2.jpg',
      gmbr3: 'assets/images/sby3.jpeg',
      gmbr4: 'assets/images/sby4.jpg',
    ),
    TourismPlace(
      name: 'Pantai Kenjeran',
      location: 'Kenjeran',
      imageAsset: 'assets/images/kenjeran.jpeg',
      hari: 'Every Day',
      desk:
          'Taman Hiburan Pantai Kenjeran menyuguhkan daya tarik wisata pesisir pantai di utara Kota Surabaya. Keindahan pesona pantai dengan pemandangan berlatar belakang Jembatan Suramadu bisa dinikmati dari sini. Beragam fasilitas seperti playground, gazebo, anjungan, stan – stan souvenir produk UMKM, dan foodcourt yang menawarkan berbagai pilihan kuliner khas pesisir wajib dicoba saat berwisata di THP Kenjeran.',
      time: '09.00 - 15.30',
      cost: '5.000',
      gmbr1: 'assets/images/kj1.jpeg',
      gmbr2: 'assets/images/kj2.jpg',
      gmbr3: 'assets/images/kj3.jpg',
      gmbr4: 'assets/images/kj4.jpg',
    ),
    TourismPlace(
      name: 'Alun - Alun Surabaya',
      location: 'Wonokromo',
      imageAsset: 'assets/images/alun.jpg',
      hari: 'Every Day',
      desk:
          'Surabaya merupakan salah satu kota terbesar di pulau Jawa dan berperan sebagai ibu kota Provinsi Jawa Timur. Dibalik hiruk pikuk jalanan Kota Pahlawan ini, ternyata ada sebuah alun-alun di tengah kota yang ramai dikunjungi masyarakat.Alun-alun Surabaya memang menjadi salah satu tempat wisata yang ramai didatangi oleh warga lokal maupun wisatawan dari luar kota. Selain tempatnya yang bersih dan nyaman, alun-alun Surabaya juga Instagramable sehingga banyak masyarakat yang berfoto-foto.',
      time: '09.00 - 15.30',
      cost: '30.000',
      gmbr1: 'assets/images/a1.jpg',
      gmbr2: 'assets/images/a2.jpg',
      gmbr3: 'assets/images/a3.jpeg',
      gmbr4: 'assets/images/a4.jpg',
    ),
    TourismPlace(
      name: 'Balai Kota',
      location: 'Wonokromo',
      imageAsset: 'assets/images/balaikota.jpg',
      hari: 'Every Day',
      desk:
          'Balai Kota Surabaya didirikan pada tahun 1915-1925. Arsiteknya adalah GC.Citroen dan pelaksanaannya oleh H.V Hollandsche Beton Mij dengan menghabiskan dana sekitar 1000 gulden pada saat itu (sekitar 8 juta) untuk seluruh biayanya (termasuk perlengkapannya). Oleh sebab itu, Balai Kota Surabaya dikenal dengan sebutan 1000 gulden building atau Bangunan 1000 gulden. Surabaya sendiri sebagai Gemeente secara resmi mulai berdiri pada tanggal 1 April 1906 dan dipimpin oleh walikota pertama yaitu A. Meyroos (bertugas 1916-1920). Hingga kini, Balai Kota tetap berfungsi sebagai kantor pemerintahan Kota Surabaya yang digunakan Walikota dan Wakil Walikota bertugas. Balai Kota sendiri juga memiliki bunker yang memiliki dua lorong, konon sisi kanan menghubungkan Balai Kota ke Rumah Dinas Walikota dan lorong sisi kiri menuju ke Gereja Maranatha',
      time: '09.00 - 15.30',
      cost: '30.000',
      gmbr1: 'assets/images/bk1.jpg',
      gmbr2: 'assets/images/bk2.jpg',
      gmbr3: 'assets/images/bk3.jpg',
      gmbr4: 'assets/images/bk4.jpeg',
    ),
    TourismPlace(
      name: 'Kalimas',
      location: 'Wonokromo',
      imageAsset: 'assets/images/kalimas.jpg',
      hari: 'Every Day',
      desk:
          'Wisata perahu kalimas rute ini menawarkan nuansa lampu lampion di sepanjang rute Monumen Kapal Selam sampai Dermaga SIOLA. Anda dapat menikmati spot foto di Air Mancur Patung Suroboyo, Taman Skate & BMX, Pasar Apung, Museum Pendidikan dan Dermaga Siola. Wisata ini sudah termasuk tiket masuk Monumen Kapal Selam. Pintu masuk dan titik akhir dari rute ini adalah Monumen Kapal Selam.',
      time: '09.00 - 15.30',
      cost: '30.000',
      gmbr1: 'assets/images/k1.jpg',
      gmbr2: 'assets/images/k2.jpg',
      gmbr3: 'assets/images/k3.jpg',
      gmbr4: 'assets/images/k4.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final TourismPlace place = tourismPlaceList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(place: place);
            }));
          },
          child: Consumer<DoneTourismProvider>(
            builder: (context, DoneTourismProvider data, widget){
              return ListItem(
                place: place,
                isDone: data.doneTourismPlaceList.contains(place),
                onCheckboxClick: (bool? value) {
                  setState(() {
                    if (value != null) {
                      value
                          ? data.doneTourismPlaceList.add(place)
                          : data.doneTourismPlaceList.remove(place);
                    }
                  });
                },
              );
            },
          ),
        );
      },
      itemCount: tourismPlaceList.length,
    );
  }
}

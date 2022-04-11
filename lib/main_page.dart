import 'package:flutter/material.dart';

class Inbox extends StatelessWidget {
  const Inbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color(0xFF701edb),
              Color(0xFF873bcc),
              Color(0xFFfe4a97),
              Color(0xFFe17763),
              Color(0xFF68998c),
            ],
          )),
        ),
        title: Text(
          "Inbox",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            // tooltip: 'Show Snackbar',
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => Card(
          child: ListTile(
            leading: Icon(Icons.account_circle, size: 60),
            title: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(name[index], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    Text(
                      "" + time[index],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
                  Text('' + message[index]),
                ]),
              ],
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('' + title[index]),
                Icon(Icons.star_border),
              ],
            ),
          ),
        ),
        itemCount: name.length,
      ),
    );
  }
}

final List name = [
  "PT.KAI",
  "Github",
  "Flutlab",
  "Facebook",
  "Xiomi Corporation",
  "PT.KAI",
  "Discord",
  "Telkomsel",
];
final List message = [
  "Bukti Pembayaran Transaksi",
  "[github]A third-party OAuth",
  "Flutlab-account created",
  "Your friends Share Post ",
  "Aktvasi akun MI anda",
  "Menunggu Pembayaran 12114547",
  "Welcome To Discord",
  "Code Verification",
];
final List title = [
  "Hallo Nanda, Pemesanan ",
  "Hey Nanda, A third-party",
  "Your Password hass ",
  "Hallo Nanda, Your Friend Send",
  "Hai, Terimakasih sudah aktivasi",
  "Hallo Nanda, Pemesanan Tiket",
  "Wellcome to Discord Nanda!!",
  "Welcome to My Telkomsel!!",
];

final List time = [
  "1h",
  '1h',
  "4h",
  "4h",
  "1d",
  "2d",
  "4d",
  "7d"
];

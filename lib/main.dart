import 'package:flutter/material.dart';
import 'package:customer_management_application/page/phanLoaiThongTinKH.dart';
import 'package:customer_management_application/page/theoDoiLichSuGiaoDichKH.dart';
import 'package:customer_management_application/page/thongKeDoanhThuCuaKH.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ứng dụng quản lí thông tin khách hàng',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: "RobotoRegular",
      ),
      home: MyHomePage(title: 'Quản lí thông tin khách hàng'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedPage = 1;
  final List<Widget> _pagesList = [
    PhanLoaiThongTinKH(),
    TheoDoiLichSuGiaoDichKH(),
    ThongKeDoanhThuCuaKH(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _pagesList[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Customer"),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: "History"),
        ],
        onTap: (index) {
          this.setState(() {
            _selectedPage = index;
          });
        },
      ),
    );
  }
}

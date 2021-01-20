import 'package:customer_management_application/userWidgets/dropDownButton.dart';
import 'package:customer_management_application/userWidgets/searchBar.dart';
import 'package:customer_management_application/userWidgets/verticalDivider.dart';
import 'package:flutter/material.dart';

class ChiTietThongTinKhachHang extends StatefulWidget {
  @override
  _ChiTietThongTinKhachHangState createState() =>
      _ChiTietThongTinKhachHangState();
}

class _ChiTietThongTinKhachHangState extends State<ChiTietThongTinKhachHang> {
  var _smallText = TextStyle(fontSize: 12);
  var _dropDownContainerHeight = 22.0;
  //DropDownButton Value
  String _loaiKhachHang;
  String _dauSoDienThoai;
  String _thanhPho;
  String _quan;
  String _huyen;
  String _gioiTinh;

  //TextEdittingController
  TextEditingController _tecSoDienThoai = TextEditingController();
  TextEditingController _tecEmail = TextEditingController();
  TextEditingController _tecDiaChi = TextEditingController();
  TextEditingController _tecNgaySinh = TextEditingController();
  TextEditingController _tecDichVuQuanTam = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Thông tin khách hàng",
      )),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: new Column(
          children: [
            Container(
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[300], width: 1.0),
                color: Colors.grey[200],
                //borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      ClipOval(
                        // borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'images/bradPitt.png',
                          height: 60,
                          width: 60,
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Phạm Như Hiếu"),
                      SizedBox(
                        height: 5,
                      ),
                      DropdownButtonHideUnderline(
                        child: Container(
                          padding: EdgeInsets.only(left: 10),
                          height: 30,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 1.0),
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: DropdownButton<String>(
                            value: _loaiKhachHang,
                            hint: Text('Mới'),
                            items: <String>[
                              'Mới',
                              'Đã mua hàng',
                              'Đang cân nhắc'
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(fontSize: 11),
                                ),
                              );
                            }).toList(),
                            onChanged: (newvalue) {
                              setState(() {
                                _loaiKhachHang = newvalue;
                              });
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Thời điểm liên hệ gần nhất"),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 45,
                      ),
                      Text("14:00 11/12/2020"),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1.0),
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Thông tin cá nhân"),
                  verticalDivider(),
                  Text("Lịch sử giao dịch")
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1.0),
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("Số điện thoại:"),
                      SizedBox(width: 23),
                      DropdownButtonHideUnderline(
                        child: Container(
                          padding: EdgeInsets.only(left: 10),
                          height: _dropDownContainerHeight,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 1.0),
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(2)),
                          ),
                          child: DropdownButton<String>(
                            value: _dauSoDienThoai,
                            hint: Text(
                              '+84',
                              style: _smallText,
                            ),
                            items: <String>['+84', '+85', '+86']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(fontSize: 11),
                                ),
                              );
                            }).toList(),
                            onChanged: (newvalue) {
                              setState(() {
                                _dauSoDienThoai = newvalue;
                              });
                            },
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        width: 208,
                        height: _dropDownContainerHeight,
                        child: TextField(
                          controller: _tecSoDienThoai,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: '        ',
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Email:"),
                      SizedBox(width: 72),
                      Container(
                        width: 268,
                        height: _dropDownContainerHeight,
                        child: TextField(
                          controller: _tecEmail,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: '        ',
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Địa chỉ:"),
                      SizedBox(width: 65),
                      Container(
                        width: 267,
                        height: _dropDownContainerHeight,
                        child: TextField(
                          controller: _tecDiaChi,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: '        ',
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 112),
                      DropdownButtonHideUnderline(
                        child: Container(
                          padding: EdgeInsets.only(left: 10),
                          height: _dropDownContainerHeight,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 1.0),
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(2)),
                          ),
                          child: DropdownButton<String>(
                            value: _thanhPho,
                            hint: Text(
                              'TP.HCM',
                              style: _smallText,
                            ),
                            items: <String>['TP.HCM', 'Đồng Nai', 'TP.Đà Lạt']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(fontSize: 11),
                                ),
                              );
                            }).toList(),
                            onChanged: (newvalue) {
                              setState(() {
                                _thanhPho = newvalue;
                              });
                            },
                          ),
                        ),
                      ),
                      DropdownButtonHideUnderline(
                        child: Container(
                          padding: EdgeInsets.only(left: 10),
                          height: _dropDownContainerHeight,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 1.0),
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(2)),
                          ),
                          child: DropdownButton<String>(
                            value: _quan,
                            hint: Text(
                              'Thủ Đức',
                              style: _smallText,
                            ),
                            items: <String>['Thủ Đức', 'Quận 9', 'Quận 3']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(fontSize: 11),
                                ),
                              );
                            }).toList(),
                            onChanged: (newvalue) {
                              setState(() {
                                _quan = newvalue;
                              });
                            },
                          ),
                        ),
                      ),
                      DropdownButtonHideUnderline(
                        child: Container(
                          padding: EdgeInsets.only(left: 10),
                          height: _dropDownContainerHeight,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 1.0),
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(2)),
                          ),
                          child: DropdownButton<String>(
                            value: _huyen,
                            hint: Text(
                              'P.Linh Trung',
                              style: _smallText,
                            ),
                            items: <String>[
                              'P.Linh Trung',
                              'P.Linh Đông',
                              'P.Linh Tây'
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(fontSize: 11),
                                ),
                              );
                            }).toList(),
                            onChanged: (newvalue) {
                              setState(() {
                                _huyen = newvalue;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Ngày sinh:"),
                      SizedBox(width: 70),
                      Container(
                        width: 244,
                        height: _dropDownContainerHeight,
                        child: TextField(
                          controller: _tecNgaySinh,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: '        ',
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Giới tính:"),
                      SizedBox(width: 80),
                      DropdownButtonHideUnderline(
                        child: Container(
                          padding: EdgeInsets.only(left: 10),
                          height: _dropDownContainerHeight,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 1.0),
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(2)),
                          ),
                          child: DropdownButton<String>(
                            value: _gioiTinh,
                            hint: Text(
                              'Nam',
                              style: _smallText,
                            ),
                            items: <String>['Nam', 'Nữ', 'Khác']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(fontSize: 11),
                                ),
                              );
                            }).toList(),
                            onChanged: (newvalue) {
                              setState(() {
                                _gioiTinh = newvalue;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Dịch vụ quan tâm:"),
                      SizedBox(width: 20),
                      Container(
                        width: 247,
                        height: _dropDownContainerHeight,
                        child: TextField(
                          controller: _tecDichVuQuanTam,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: '        ',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

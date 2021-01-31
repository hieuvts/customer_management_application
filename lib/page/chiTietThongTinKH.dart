import 'package:customer_management_application/page/lichSuGiaoDich2.dart';
import 'package:customer_management_application/page/theoDoiLichSuGiaoDichKH.dart';
import 'package:customer_management_application/userWidgets/verticalDivider.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
                          height: 70,
                          width: 70,
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Đỗ Nam Trung", style: TextStyle(fontSize: 20)),
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
                        height: 47,
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
                  Text("Thông tin cá nhân",
                      style: TextStyle(
                        fontSize: 18,
                      )),
                  verticalDivider(),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) => TheoDoiLichSuGiaoDichKH2()));
                    },
                    child: Text("Lịch sử giao dịch",
                        style: TextStyle(
                          fontSize: 18,
                        )),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1.0),
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Số điện thoại:"),
                        SizedBox(width: 23),
                        DropdownButtonHideUnderline(
                          child: Container(
                            padding: EdgeInsets.only(left: 10),
                            height: _dropDownContainerHeight,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 1.0),
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(2)),
                            ),
                            child: DropdownButton<String>(
                              value: _dauSoDienThoai,
                              hint: Text(
                                '+84',
                                style: _smallText,
                              ),
                              items: <String>[
                                '+84',
                                '+85',
                                '+86'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
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
                        SizedBox(width: 10),
                        Container(
                          width: 200,
                          height: _dropDownContainerHeight,
                          child: TextField(
                            controller: _tecSoDienThoai,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: '359545405',
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Email:"),
                        Container(
                          width: 275,
                          height: _dropDownContainerHeight,
                          child: TextField(
                            controller: _tecEmail,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: '17520482@gm.uit.edu.vn',
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Địa chỉ:"),
                        Container(
                          width: 275,
                          height: _dropDownContainerHeight,
                          child: TextField(
                            controller: _tecDiaChi,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Kí túc xá khu B',
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: 112),
                        DropdownButtonHideUnderline(
                          child: Container(
                            padding: EdgeInsets.only(left: 10),
                            height: _dropDownContainerHeight,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 1.0),
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(2)),
                            ),
                            child: DropdownButton<String>(
                              value: _thanhPho,
                              hint: Text(
                                'TP.HCM',
                                style: _smallText,
                              ),
                              items: <String>[
                                'TP.HCM',
                                'Đồng Nai',
                                'TP.Đà Lạt'
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
                              border:
                                  Border.all(color: Colors.grey, width: 1.0),
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(2)),
                            ),
                            child: DropdownButton<String>(
                              value: _quan,
                              hint: Text(
                                'Thủ Đức',
                                style: _smallText,
                              ),
                              items: <String>[
                                'Thủ Đức',
                                'Quận 9',
                                'Quận 3'
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
                              border:
                                  Border.all(color: Colors.grey, width: 1.0),
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(2)),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Ngày sinh:"),
                        Container(
                          width: 275,
                          height: _dropDownContainerHeight,
                          child: TextField(
                            controller: _tecNgaySinh,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: '29/01/1999',
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Giới tính:"),
                        SizedBox(width: 58),
                        DropdownButtonHideUnderline(
                          child: Container(
                            padding: EdgeInsets.only(left: 10),
                            height: _dropDownContainerHeight,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 1.0),
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(2)),
                            ),
                            child: DropdownButton<String>(
                              value: _gioiTinh,
                              hint: Text(
                                'Nam',
                                style: _smallText,
                              ),
                              items: <String>[
                                'Nam',
                                'Nữ',
                                'Khác'
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
                                  _gioiTinh = newvalue;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Dịch vụ quan tâm:"),
                        Container(
                          width: 247,
                          height: _dropDownContainerHeight,
                          child: TextField(
                            controller: _tecDichVuQuanTam,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Giao hàng tận nhà',
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 100),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.done, size: 30),
        onPressed: () {
          Fluttertoast.showToast(
              msg: "Đã lưu các thay đổi", toastLength: Toast.LENGTH_LONG);
          Navigator.pop(context);
        },
      ),
    );
  }
}

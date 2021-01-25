import 'package:customer_management_application/userWidgets/danhSachDoanhThuCuaKhachHang.dart';
import 'package:customer_management_application/userWidgets/danhSachGiaoDich.dart';
import 'package:customer_management_application/userWidgets/searchBar.dart';
import 'package:customer_management_application/userWidgets/verticalDivider.dart';
import 'package:flutter/material.dart';

class ThongKeDoanhThuCuaKH extends StatefulWidget {
  @override
  _ThongKeDoanhThuCuaKHState createState() => _ThongKeDoanhThuCuaKHState();
}

class _ThongKeDoanhThuCuaKHState extends State<ThongKeDoanhThuCuaKH> {
  String _loaiKhachHang;
  String _donViThoiGian;
  String _donViTienTe;
  String _thoiDiemThongKe;
  var _smallerText4DropDownHint = TextStyle(fontSize: 10.5);
  var backgroundColor = Colors.grey[200];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: new Column(
          children: [
            SearchBar(),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1.0),
                color: backgroundColor,
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: _loaiKhachHang,
                      hint: Text('Loại khách hàng',
                          style: _smallerText4DropDownHint),
                      items: <String>['Loại khách hàng', 'A']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value, style: _smallerText4DropDownHint),
                        );
                      }).toList(),
                      onChanged: (newvalue) {
                        setState(() {
                          _loaiKhachHang = newvalue;
                        });
                      },
                    ),
                  ),
                  verticalDivider(),
                  DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: _donViThoiGian,
                      hint: Text(
                        'Đơn vị thời gian',
                        style: _smallerText4DropDownHint,
                      ),
                      items: <String>['Đơn vị thời gian', 'A']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: _smallerText4DropDownHint,
                          ),
                        );
                      }).toList(),
                      onChanged: (newvalue) {
                        setState(() {
                          _donViThoiGian = newvalue;
                        });
                      },
                    ),
                  ),
                  verticalDivider(),
                  DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: _donViTienTe,
                      hint: Text('Đơn vị tiền tệ',
                          style: _smallerText4DropDownHint),
                      items: <String>['Đơn vị tiền tệ', 'A']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value, style: _smallerText4DropDownHint),
                        );
                      }).toList(),
                      onChanged: (newvalue) {
                        setState(() {
                          _donViTienTe = newvalue;
                        });
                      },
                    ),
                  ),
                  verticalDivider(),
                  DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: _thoiDiemThongKe,
                      hint: Text('Thời điểm thống kê',
                          style: _smallerText4DropDownHint),
                      items: <String>['Thời điểm thống kê', 'A']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value, style: _smallerText4DropDownHint),
                        );
                      }).toList(),
                      onChanged: (newvalue) {
                        setState(() {
                          _thoiDiemThongKe = newvalue;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Expanded(child: DanhSachDoanhThuCuaKhachHang()),
          ],
        ),
      ),
    );
  }
}

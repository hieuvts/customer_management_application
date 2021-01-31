import 'package:customer_management_application/userWidgets/danhSachGiaoDich.dart';
import 'package:customer_management_application/userWidgets/danhSachKhachHang.dart';
import 'package:customer_management_application/userWidgets/verticalDivider.dart';
import 'package:flutter/material.dart';

class TheoDoiLichSuGiaoDichKH2 extends StatefulWidget {
  @override
  _TheoDoiLichSuGiaoDichKH2State createState() =>
      _TheoDoiLichSuGiaoDichKH2State();
}

class _TheoDoiLichSuGiaoDichKH2State extends State<TheoDoiLichSuGiaoDichKH2> {
  String _tinhTrang;
  String _tinhTrangThanhToan;
  String _donViTienTe;
  String _ngayLapHoaDon;
  var _smallerText4DropDownHint = TextStyle(fontSize: 10.5);
  var backgroundColor = Colors.grey[200];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theo dõi lịch sử giao dịch khách hàng'),
      ),
      body: Padding(
        padding: EdgeInsets.all(6),
        child: new Column(
          children: [
            Container(
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[300], width: 1.0),
                color: backgroundColor,
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
                      Text("Tổng doanh thu"),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Thời điểm thống kê"),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "10.000 VNĐ",
                        style: TextStyle(color: Colors.green),
                      ),
                      SizedBox(
                        height: 5,
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
                color: backgroundColor,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Thông tin cá nhân",
                      style: TextStyle(
                        fontSize: 16,
                      )),
                  verticalDivider(),
                  Text("Lịch sử giao dịch",
                      style: TextStyle(
                        fontSize: 16,
                      ))
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1.0),
                color: backgroundColor,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: _tinhTrang,
                      hint:
                          Text('Tình trạng', style: _smallerText4DropDownHint),
                      items: <String>['Tình trạng', 'A']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value, style: _smallerText4DropDownHint),
                        );
                      }).toList(),
                      onChanged: (newvalue) {
                        setState(() {
                          _tinhTrang = newvalue;
                        });
                      },
                    ),
                  ),
                  verticalDivider(),
                  DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: _tinhTrangThanhToan,
                      hint: Text(
                        'Tình trạng thanh toán',
                        style: _smallerText4DropDownHint,
                      ),
                      items: <String>['Tình trạng thanh toán', 'A']
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
                          _tinhTrangThanhToan = newvalue;
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
                      value: _ngayLapHoaDon,
                      hint: Text('Ngày lập hoá đơn',
                          style: _smallerText4DropDownHint),
                      items: <String>['Ngày lập hoá đơn', 'A']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value, style: _smallerText4DropDownHint),
                        );
                      }).toList(),
                      onChanged: (newvalue) {
                        setState(() {
                          _ngayLapHoaDon = newvalue;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Expanded(child: DanhSachGiaoDich()),
          ],
        ),
      ),
    );
  }
}

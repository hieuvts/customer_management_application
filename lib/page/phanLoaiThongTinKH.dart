import 'package:customer_management_application/userWidgets/danhSachKhachHang.dart';
import 'package:customer_management_application/userWidgets/searchBar.dart';
import 'package:customer_management_application/userWidgets/verticalDivider.dart';
import 'package:flutter/material.dart';

//WF hiển thị danh sách khách hàng
class PhanLoaiThongTinKH extends StatefulWidget {
  @override
  _PhanLoaiThongTinKHState createState() => _PhanLoaiThongTinKHState();
}

class _PhanLoaiThongTinKHState extends State<PhanLoaiThongTinKH> {
  var _loaiKHDaChon;
  var _loaiThoiGianDaChon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchBar(),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 1.0),
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: _loaiKHDaChon,
                    hint: Text(
                      'Loại khách hàng',
                    ),
                    items: <String>['Mới', 'Đã mua hàng', 'Đang cân nhắc']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (newvalue) {
                      setState(() {
                        _loaiKHDaChon = newvalue;
                      });
                    },
                  ),
                ),
                verticalDivider(),
                DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: _loaiThoiGianDaChon,
                    hint: Text('Lần liên hệ gần nhất'),
                    items: <String>['A-Z', 'Z-A']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (newvalue) {
                      setState(() {
                        _loaiThoiGianDaChon = newvalue;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(child: DanhSachKhachHang()),
      ],
    );
  }
}

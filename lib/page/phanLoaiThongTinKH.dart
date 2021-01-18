import 'package:customer_management_application/userWidgets/searchBar.dart';
import 'package:flutter/material.dart';

//WF hiển thị danh sách khách hàng
class PhanLoaiThongTinKH extends StatefulWidget {
  @override
  _PhanLoaiThongTinKHState createState() => _PhanLoaiThongTinKHState();
}

class _PhanLoaiThongTinKHState extends State<PhanLoaiThongTinKH> {
  var _loaiKHDaChon = 'Loại khách hàng';
  var _loaiThoiGianDaChon = 'Thời điểm liên hệ gần nhất';
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
                //Text("Loại khách hàng"),
                DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: _loaiKHDaChon,
                    items: <String>[
                      'Loại khách hàng',
                      'Mới',
                      'Đã mua hàng',
                      'Đang cân nhắc'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String value) {
                      setState(() {
                        _loaiKHDaChon = value;
                      });
                    },
                  ),
                ),
                Container(
                  width: 1,
                  height: 25,
                  color: Colors.grey,
                ),
                DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: _loaiThoiGianDaChon,
                    items: <String>[
                      'Loại khách hàng',
                      'Mới',
                      'Đã mua hàng',
                      'Đang cân nhắc'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String value) {
                      setState(() {
                        _loaiThoiGianDaChon = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

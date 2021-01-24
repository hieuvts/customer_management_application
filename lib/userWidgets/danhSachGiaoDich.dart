import 'package:customer_management_application/page/chiTietThongTinKH.dart';
import 'package:flutter/material.dart';
import 'package:customer_management_application/userWidgets/horizontalDivider.dart';

class DanhSachGiaoDich extends StatefulWidget {
  @override
  _DanhSachGiaoDichState createState() => _DanhSachGiaoDichState();
}

class _DanhSachGiaoDichState extends State<DanhSachGiaoDich> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 8,
      itemBuilder: (context, index) => CustomCardView('Đã hoàn thành',
          'SAMPLE01', 'Đã thanh toán', '14:00 - 1/12/2020', '10.000 VNĐ'),
    );
  }
}

class CustomCardView extends StatefulWidget {
  String _tinhTrang;
  String _maDonHang;
  String _tinhTrangThanhToan;

  String _ngayLapHoaDon;
  String _tongHoaDon;
  CustomCardView(
    this._tinhTrang,
    this._maDonHang,
    this._tinhTrangThanhToan,
    this._ngayLapHoaDon,
    this._tongHoaDon,
  );
  @override
  _CustomCardViewState createState() => _CustomCardViewState();
}

class _CustomCardViewState extends State<CustomCardView> {
  var _biggerText = TextStyle(fontSize: 14, fontFamily: "RobotoLight");
  Color _borderColor;
  var _smallSizedBox = SizedBox(
    height: 10,
  );
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget._tinhTrang,
                  style: _biggerText,
                ),
                Container(
                  width: screenSize.width - 40,
                  height: 1,
                  color: Colors.black,
                ),
                Text(
                  widget._tinhTrang,
                  style: _biggerText,
                ),
                _smallSizedBox,
              ],
            ),
            Spacer(
              flex: 4,
            ),
          ],
        ),
      ),
    );
  }
}

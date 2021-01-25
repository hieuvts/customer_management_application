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
      itemBuilder: (context, index) => CustomCardView('Đang vận chuyển',
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
  var _biggerText = TextStyle(fontSize: 16);
  Color _tinhTrangColor;
  Color _tinhTrangThanhToanColor;
  var _smallSizedBox = SizedBox(
    height: 10,
  );

  @override
  Widget build(BuildContext context) {
    switch (widget._tinhTrang) {
      case 'Đã hoàn thành':
        _tinhTrangColor = Colors.green;
        break;
      case 'Đang chờ xác nhận':
        _tinhTrangColor = Colors.yellowAccent;
        break;
      case 'Đang vận chuyển':
        _tinhTrangColor = Colors.blue[900];
        break;
      case 'Đã huỷ':
        _tinhTrangColor = Colors.red;
        break;
      default:
        _tinhTrangColor = Colors.red;
    }
    switch (widget._tinhTrangThanhToan) {
      case 'Đã thanh toán':
        _tinhTrangThanhToanColor = Colors.green;
        break;
      case 'Đang chờ thanh toán':
        _tinhTrangThanhToanColor = Colors.yellowAccent;
        break;
      case 'Chưa thanh toán':
        _tinhTrangThanhToanColor = Colors.red;
        break;
      default:
        _tinhTrangThanhToanColor = Colors.red;
    }
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
        elevation: 3,
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: new Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget._tinhTrang,
                    style: TextStyle(fontSize: 17, color: _tinhTrangColor),
                  ),
                  Text(
                    widget._tongHoaDon,
                    style: TextStyle(
                        fontSize: 17, color: _tinhTrangThanhToanColor),
                  ),
                ],
              ),
              Divider(
                color: Colors.black,
                thickness: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mã đơn hàng",
                        style: _biggerText,
                      ),
                      _smallSizedBox,
                      Text(
                        "Tình trạng thanh toán",
                        style: _biggerText,
                      ),
                      _smallSizedBox,
                      Text(
                        "Ngày lập hoá đơn",
                        style: _biggerText,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget._maDonHang,
                        style: _biggerText,
                      ),
                      _smallSizedBox,
                      Text(
                        widget._tinhTrangThanhToan,
                        style: _biggerText,
                      ),
                      _smallSizedBox,
                      Text(
                        widget._ngayLapHoaDon,
                        style: _biggerText,
                      ),
                    ],
                  ),
                  Column(),
                  Column(),
                ],
              ),
            ],
          ),
        ));
  }
}

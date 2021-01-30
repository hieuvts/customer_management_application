import 'package:flutter/material.dart';

class DanhSachDoanhThuCuaKhachHang extends StatefulWidget {
  @override
  _DanhSachDoanhThuCuaKhachHangState createState() =>
      _DanhSachDoanhThuCuaKhachHangState();
}

class _DanhSachDoanhThuCuaKhachHangState
    extends State<DanhSachDoanhThuCuaKhachHang> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 8,
      itemBuilder: (context, index) => CustomCardView('images/bradPitt.png',
          'Đỗ Nam Trung', '16.000.000', 'Mới', 'VNĐ', 'Tuần'),
    );
  }
}

class CustomCardView extends StatefulWidget {
  String _anhDaiDienKhachHang;
  String _tenKhachHang;
  String _tongDoanhThu;
  String _nhomKhachHang;
  String _donViTienTe;
  String _donViThoiGian;
  CustomCardView(
      this._anhDaiDienKhachHang,
      this._tenKhachHang,
      this._tongDoanhThu,
      this._nhomKhachHang,
      this._donViTienTe,
      this._donViThoiGian);
  @override
  _CustomCardViewState createState() => _CustomCardViewState();
}

class _CustomCardViewState extends State<CustomCardView> {
  var _biggerText = TextStyle(fontSize: 14);
  Color _borderColor;
  var _smallSizedBox = SizedBox(
    height: 10,
  );
  var backgroundColor = Colors.grey[200];
  Color _tinhTrangKHColor;
  @override
  Widget build(BuildContext context) {
    switch (widget._nhomKhachHang) {
      case 'Mới':
        _tinhTrangKHColor = Colors.red;
        break;
      case 'Đã mua hàng':
        _tinhTrangKHColor = Colors.green;
        break;
      case 'Đang cân nhắc':
        _tinhTrangKHColor = Colors.purple[400];
        break;
      default:
        _tinhTrangKHColor = Colors.red;
    }
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 3,
      child: Container(
        color: backgroundColor,
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Thời điểm thống kê"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    ClipOval(
                      // borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        widget._anhDaiDienKhachHang,
                        height: 90,
                        width: 90,
                      ),
                    ),
                  ],
                ),
                Spacer(
                  flex: 1,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget._tenKhachHang,
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Tổng doanh thu: ${widget._tongDoanhThu}",
                      style: _biggerText,
                    ),
                    _smallSizedBox,
                    Text(
                      "Nhóm khách hàng: ${widget._nhomKhachHang}",
                      style: _biggerText,
                    ),
                    _smallSizedBox,
                    Text(
                      "Đơn vị tiền tệ: ${widget._donViTienTe}",
                      style: _biggerText,
                    ),
                    _smallSizedBox,
                    Text(
                      "Đơn vị thời gian: ${widget._donViThoiGian}",
                      style: _biggerText,
                    ),
                    _smallSizedBox,
                  ],
                ),
                Spacer(
                  flex: 10,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

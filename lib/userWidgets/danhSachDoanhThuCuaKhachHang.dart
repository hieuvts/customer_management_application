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
      itemBuilder: (context, index) => CustomCardView(
          'images/bradPitt.png',
          'Phạm Như Hiếu',
          '20.200.000',
          'Nhóm khách hàng',
          'Việt nam đồng',
          'Giờ'),
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
  @override
  Widget build(BuildContext context) {
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
                      style: _biggerText,
                    ),
                    SizedBox(height: 20),
                    Text(
                      widget._tongDoanhThu,
                      style: _biggerText,
                    ),
                    _smallSizedBox,
                    Text(
                      widget._nhomKhachHang,
                      style: _biggerText,
                    ),
                    _smallSizedBox,
                    Text(
                      widget._donViTienTe,
                      style: _biggerText,
                    ),
                    _smallSizedBox,
                    Text(
                      widget._donViThoiGian,
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

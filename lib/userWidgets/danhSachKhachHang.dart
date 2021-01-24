import 'package:customer_management_application/page/chiTietThongTinKH.dart';
import 'package:flutter/material.dart';

class DanhSachKhachHang extends StatefulWidget {
  @override
  _DanhSachKhachHangState createState() => _DanhSachKhachHangState();
}

class _DanhSachKhachHangState extends State<DanhSachKhachHang> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 8,
      itemBuilder: (context, index) => CustomCardView(
          'images/bradPitt.png',
          'Phạm Như Hiếu',
          '0359545405',
          '17520482@gm.uit.edu.vn',
          'Vận chuyển sản phẩm tận nhà',
          null),
    );
  }
}

class CustomCardView extends StatefulWidget {
  String _anhDaiDienKhachHang;
  String _tenKhachHang;
  String _soDienThoai;
  String _diaChiEmail;
  String _dichVuQuanTam;
  String _loaiKhachHang;
  CustomCardView(
      this._anhDaiDienKhachHang,
      this._tenKhachHang,
      this._soDienThoai,
      this._diaChiEmail,
      this._dichVuQuanTam,
      this._loaiKhachHang);
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
    switch (widget._loaiKhachHang) {
      case 'Mới':
        _borderColor = Colors.red;
        break;
      case 'Đã mua hàng':
        _borderColor = Colors.green;
        break;
      case 'Đang cân nhắc':
        _borderColor = Colors.purple[400];
        break;
      default:
        _borderColor = Colors.red;
    }
    return InkWell(
      onTap: () {
        Navigator.of(context).push(new MaterialPageRoute(
            builder: (context) => ChiTietThongTinKhachHang()));
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  ClipOval(
                    // borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      widget._anhDaiDienKhachHang,
                      height: 70,
                      width: 70,
                    ),
                  ),
                ],
              ),
              Spacer(
                flex: 4,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget._tenKhachHang,
                    style: _biggerText,
                  ),
                  _smallSizedBox,
                  Text(
                    widget._soDienThoai,
                    style: _biggerText,
                  ),
                  _smallSizedBox,
                  Text(
                    widget._diaChiEmail,
                    style: _biggerText,
                  ),
                  _smallSizedBox,
                  Text(
                    widget._dichVuQuanTam,
                    style: _biggerText,
                  ),
                  _smallSizedBox,
                ],
              ),
              Spacer(
                flex: 4,
              ),
              Column(
                children: [
                  Container(
                    height: 35,
                    decoration: BoxDecoration(
                      border: Border.all(color: _borderColor, width: 2.0),
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: widget._loaiKhachHang,
                          hint: Text('Mới'),
                          items: <String>['Mới', 'Đã mua hàng', 'Đang cân nhắc']
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
                              widget._loaiKhachHang = newvalue;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(
                flex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

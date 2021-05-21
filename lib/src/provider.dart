import 'package:flutter/material.dart';

class MyProvider with ChangeNotifier {
  List<String> url = [
    'https://image.yes24.com/momo/TopCate424/MidCate009/42380431.jpg',
    'https://ticketimage.interpark.com/interparkenter/guckkasten/discography/guckkasten_discography_pc_cover(530x530px)_infection.jpg',
    'https://ccimg.hellomarket.com/images/2018/item/s9/01/26/01/1528_1175443_1.jpg',
    'https://mblogthumb-phinf.pstatic.net/MjAyMDAzMThfMzgg/MDAxNTg0NTAzNDY2MTU4.6L-OHRpGO38EUUdBGTDQh9pCsi_mcF19S-_SIuj780og.u9_HPS6jX4FN3L4H9HPY4VBWFFp3QrHXK6JkpH5JLhAg.PNG.jangmichael/%EA%B5%AD%EC%B9%B4%EC%8A%A4%ED%85%90_%EC%82%AC%EB%83%A5.PNG?type=w800',
    'https://lh3.googleusercontent.com/-sYL3rrxLI04/WvBAPlOwEwI/AAAAAAACZq0/vLGSNk5-HWgKsBNIhJe4PO1Km4w_TJooQCHMYCw/s0/c8f9e9301e965b20a5dd9e19a92358e80645163f.jpg'
  ];
  List<String> discover = [
    'TV & Film',
    'Sports',
    'Society & Culture',
    'Arts',
    'News',
    'Trues'
  ];
  List<Color> colors = [
    Color(0XFF0E344D),
    Colors.white,
    Colors.grey,
    Colors.white,
    Colors.yellow,
  ];

  int _onPageChanged = 1;

  bool _onPressed = true;

  int _discoverPress = 1;

  Set<int> _isChecked = {};

  Set<int> get isChecked => _isChecked;

  int get onPageChanged => _onPageChanged;

  bool get onPressed => _onPressed;

  int get discoverPress => _discoverPress;



  void press() {
    _onPressed = !_onPressed;
  }

  set discoverPress(int value) {
    _discoverPress = value;
  }

  set onPageChanged(int value) {
    _onPageChanged = value;
    notifyListeners();
  }
}
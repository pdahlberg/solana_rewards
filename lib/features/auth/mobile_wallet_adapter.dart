
import 'package:flutter/foundation.dart';

abstract class MobileWalletAdapter {

  Future<Uint8List?> authorize();

}
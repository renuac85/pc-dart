// Copyright (c) 2013, Iván Zaera Avellón - izaera@gmail.com
// Use of this source code is governed by a LGPL v3 license.
// See the LICENSE file for more information.

library cipher.test.src.null_secure_random;

import "package:cipher/api.dart";
import "package:cipher/random/secure_random_base.dart";

/// An implementation of [SecureRandom] that return fixed numbers.
class FixedSecureRandom extends SecureRandomBase {

  var _next = 0;
  var _values = [
    75,88,182,94,166,69,30,196,252,236,154,103,237,207,120,199,211,4,22,27,126,204,106,203,29,26,93,69,154,89,194,120,140,155,95,9,64,242,227,83,56,85,12,16,62,129,190,211,18,121,169,203,212,163,187,187,117,124,170,12,112,111,19,133,191,117,36,123,231,153,177,155,230,155,239,249,210,79,203,82,120,30,148,199,232,132,132,145,101,186,136,89,156,85,204,18,126,249,24,109,220,42,173,181,237,186,244,78,234,51,210,164,2,109,69,15,127,94,62,219,166,17,26,136,33,23,40,228,117,210,195,135,171,254,220,250,159,123,135,190,59,253,31,116,4,130,214,100,108,131,98,215,162,43,73,131,200,193,196,25,254,124,111,12,43,190,57,235,182,46,245,103,14,156,248,6,118,46,90,156,161,92,36,232,192,27,4,79,164,239,33,7,234,134,251,201,183,101,130,16,53,156,159,128,31,114,102,189,93,146,195,240,218,69,200,116,38,100,150,240,83,115,112,26,45,227,187,192,209,78,26,103,205,244,16,222,206,14,44,137,122,90,242,71,18,100,66,54,129,102,204,6,184,67,183,150,113,49,19,39,46,106,155,228,196,172,176,135,28,190,112,244,165,186,8,34,215,198,40,10,137,192,232,115,29,235,232,156,228,111,19,89,114,179,117,98,132,58,185,89,156,198,29,45,146,137,41,250,115,13,199,244,160,255,117,54,88,218,216,139,160,190,127,123,126,254,25,43,124,25,74,41,139,14,191,198,187,212,165,180,77,29,144,169,231,133,47,196,243,254,75,150,175,157,166,54,201,243,112,124,33,125,99,173,107,23,250,204,103,213,56,34,64,50,191,114,45,96,31,33,110,236,211,218,134,80,241,191,124,222,44,145,251,193,30,123,162,41,177,216,208,15,99,198,118,251,82,98,12,60,176,75,25,79,65,45,137,64,17,193,160,121,112,152,249,117,230,118,99,250,66,78,91,9,143,8,108,119,122,27,173,51,28,26,1,146,254,44,31,61,62,99,210,108,192,152,182,249,229,137,201,204,145,160,158,243,0,28,183,47,70,254,173,148,176,222,163,153,84,84,219,73,236,5,141,84,95,183,145,100,96,116,181,35,161,116,168,247,224,235,222,61,179,49,152,119,210,227,244,110,144,87,198,188,203,171,236,93,116,85,21,120,211,255,137,223,28,80,173,206,165,86,229,147,17,194,96,32,48,219,203,162,41,249,221,51,219,130,233,63,208,8,35,103,215,76,230,91,108,153,122,215,220,113,37,81,56,164,80,29,39,14,115,82,137,182,74,123,88,213,156,210,254,45,118,57,158,109,238,114,101,234,187,5,67,172,175,222,242,161,212,62,5,233,205,72,5,204,103,163,67,128,76,14,170,7,42,136,114,115,220,215,182,201,45,42,160,12,113,61,221,240,168,179,89,26,18,225,127,243,110,85,127,16,176,76,206,169,250,188,244,54,185,97,18,132,147,64,151,228,23,222,145,152,151,33,115,231,19,237,52,30,141,20,198,7,148,81,162,245,23,237,98,237,3,27,233,253,93,75,205,201,23,201,187,72,124,38,85,87,217,86,103,112,39,101,199,99,247,129,230,100,5,30,202,105,150,172,39,254,116,147,168,133,30,225,26,34,57,64,88,40,19,147,46,108,222,96,207,136,168,253,131,107,227,179,60,31,154,146,2,162,33,36,158,17,251,184,68,33,95,234,45,141,217,173,114,140,199,224,128,54,244,69,209,144,187,193,89,188,87,208,209,246,37,133,165,74,110,224,222,254,159,31,154,90,72,208,52,109,218,41,185,185,177,248,180,172,227,111,167,51,31,184,234,184,132,157,212,17,154,9,191,193,131,100,197,105,129,55,25,146,97,127,171,7,246,79,93,181,42,214,244,64,141,203,19,170,117,28,43,92,172,129,244,142,247,69,144,34,8,241,17,239,81,56,18,248,150,48,167,252,17,73,189,154,34,169,34,146,94,14,80,185,86,25,130,90,87,166,188,89,99,10,36,28,214,15,109,187,206,166,224,118,186,9,189,121,155,6,100,4,251,197,66,225,69,154,215,130,238,45,103,44,35,56,86,60,101,229,51,172,240,140,148,144,133,46,197,44,227,62,124,251,74,125,176,228,95,187,64,172,152,89,11,62,248,79,223,81,49,16,210,148,14,110,69,217,242,79,45,134,151,12,227,204,5,68,216,86,134,237,247,216,252,162,117,210,183,33,232,216,17,152,124,224,224,162,16,51,157,124,163,33,233,217,155,94,242,176,23,36,238,139,206,34,82,159,98,96,177,163,212,150,
  ];

  String get algorithmName => "Fixed";

  void seed(CipherParameters params) {
  }

  int nextUint8() {
    if( _next>=_values.length ) {
      _next = 0;
    }
    return _values[_next++];
  }

}

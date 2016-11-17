// Copyright (c) 2016, Nick Ng. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:js/js.dart';

@JS()
@anonymous
class DropzoneConfiguration {

  external String get url;

  external void set url(String url);

  external String get method;

  external void set method(String method);
}

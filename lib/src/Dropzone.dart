// Copyright (c) 2016, Nick Ng. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:dropzone_angular_dart/src/DropzoneConfiguration.dart';
import 'package:js/js.dart';

@JS()
class Dropzone {

  external Dropzone(element, DropzoneConfiguration configuration);
}

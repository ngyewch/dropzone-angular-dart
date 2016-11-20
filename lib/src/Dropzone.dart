// Copyright (c) 2016, Nick Ng. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'dart:js';

class Dropzone {

  final JsObject _jsObject;

  Dropzone(this._jsObject);

  void removeFile(Blob file) {
    return _jsObject.callMethod("removeFile", [file]);
  }

  void removeAllFiles({bool removeCurrentlyUploadingFiles}) {
    if (removeCurrentlyUploadingFiles != null) {
      return _jsObject.callMethod("removeAllFiles", [removeCurrentlyUploadingFiles]);
    } else {
      return _jsObject.callMethod("removeAllFiles", []);
    }
  }

  getAcceptedFiles() {
    return _jsObject.callMethod("getAcceptedFiles", []);
  }

  getRejectedFiles() {
    return _jsObject.callMethod("getRejectedFiles", []);
  }

  getQueuedFiles() {
    return _jsObject.callMethod("getQueuedFiles", []);
  }

  getUploadingFiles() {
    return _jsObject.callMethod("getUploadingFiles", []);
  }

  void disable() {
    _jsObject.callMethod("disable", []);
  }

  void createThumbnailFromUrl(Blob file, String imageUrl, {Function callback, dynamic crossOrigin}) {
    _jsObject.callMethod("createThumbnailFromUrl", []);
  }

  void on(String event, Function eventHandler) {
    _jsObject.callMethod("on", [event, eventHandler]);
  }
}

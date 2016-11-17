// Copyright (c) 2016, Nick Ng. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';

import 'package:dropzone_angular_dart/src/Dropzone.dart';
import 'package:dropzone_angular_dart/src/DropzoneConfiguration.dart';

@Directive(selector: '[dropzone]')
class DropzoneDirective implements AfterViewInit {

  final ElementRef _elementRef;
  Dropzone dropzone;

  DropzoneDirective(this._elementRef);

  @override
  ngAfterViewInit() {
    DropzoneConfiguration conf = new DropzoneConfiguration();
    conf.url = '/upload';
    dropzone = new Dropzone(_elementRef.nativeElement, conf);
  }
}

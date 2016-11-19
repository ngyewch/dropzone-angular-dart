// Copyright (c) 2016, Nick Ng. All rights reserved. Use of this source code

// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:js';
import 'package:angular2/core.dart';

import 'package:dropzone_angular_dart/src/Dropzone.dart';
import 'package:dropzone_angular_dart/src/DropzoneConfiguration.dart';

@Directive(selector: '[dropzone]')
class DropzoneDirective implements AfterViewInit {

  final ElementRef _elementRef;
  Dropzone dropzone;
  @Input('config')
  DropzoneConfiguration dropzoneConfiguration;
  @Output("dropzone")
  final EventEmitter<Dropzone> eventEmitter = new EventEmitter<Dropzone>();

  DropzoneDirective(this._elementRef);

  @override
  ngAfterViewInit() {
    var config = {};
    if (dropzoneConfiguration != null) {
      if (dropzoneConfiguration.url != null) {
        config['url'] = dropzoneConfiguration.url;
      }
      if (dropzoneConfiguration.method != null) {
        config['method'] = dropzoneConfiguration.method;
      }
      if (dropzoneConfiguration.parallelUploads != null) {
        config['parallelUploads'] = dropzoneConfiguration.parallelUploads;
      }
      if (dropzoneConfiguration.maxFilesize != null) {
        config['maxFilesize'] = dropzoneConfiguration.maxFilesize;
      }
      if (dropzoneConfiguration.filesizeBase != null) {
        config['filesizeBase'] = dropzoneConfiguration.filesizeBase;
      }
      if (dropzoneConfiguration.paramName != null) {
        config['paramName'] = dropzoneConfiguration.paramName;
      }
      if (dropzoneConfiguration.uploadMultiple != null) {
        config['uploadMultiple'] = dropzoneConfiguration.uploadMultiple;
      }
      if (dropzoneConfiguration.headers != null) {
        config['headers'] = new JsObject.jsify(dropzoneConfiguration.headers);
      }
      if (dropzoneConfiguration.addRemoveLinks != null) {
        config['addRemoveLinks'] = dropzoneConfiguration.addRemoveLinks;
      }
      if (dropzoneConfiguration.previewsContainer != null) {
        config['previewsContainer'] = dropzoneConfiguration.previewsContainer;
      }
      if (dropzoneConfiguration.hiddenInputContainer != null) {
        config['hiddenInputContainer'] =
            dropzoneConfiguration.hiddenInputContainer;
      }
      if (dropzoneConfiguration.clickable != null) {
        config['clickable'] = dropzoneConfiguration.clickable;
      }
      if (dropzoneConfiguration.createImageThumbnails != null) {
        config['createImageThumbnails'] =
            dropzoneConfiguration.createImageThumbnails;
      }
      if (dropzoneConfiguration.maxThumbnailFilesize != null) {
        config['maxThumbnailFilesize'] =
            dropzoneConfiguration.maxThumbnailFilesize;
      }
      if (dropzoneConfiguration.thumbnailWidth != null) {
        config['thumbnailWidth'] = dropzoneConfiguration.thumbnailWidth;
      }
      if (dropzoneConfiguration.thumbnailHeight != null) {
        config['thumbnailHeight'] = dropzoneConfiguration.thumbnailHeight;
      }
      if (dropzoneConfiguration.maxFiles != null) {
        config['maxFiles'] = dropzoneConfiguration.maxFiles;
      }
      if (dropzoneConfiguration.resize != null) {
        config['resize'] = allowInterop(dropzoneConfiguration.resize);
      }
      if (dropzoneConfiguration.init != null) {
        config['init'] = allowInterop(dropzoneConfiguration.init);
      }
      if (dropzoneConfiguration.acceptedFiles != null) {
        config['acceptedFiles'] = dropzoneConfiguration.acceptedFiles;
      }
      if (dropzoneConfiguration.accept != null) {
        config['accept'] = allowInterop(dropzoneConfiguration.accept);
      }
      if (dropzoneConfiguration.renameFilename != null) {
        config['renameFilename'] = allowInterop(dropzoneConfiguration.renameFilename);
      }
      if (dropzoneConfiguration.autoProcessQueue != null) {
        config['autoProcessQueue'] = dropzoneConfiguration.autoProcessQueue;
      }
      if (dropzoneConfiguration.previewTemplate != null) {
        config['previewTemplate'] = dropzoneConfiguration.previewTemplate;
      }
      if (dropzoneConfiguration.forceFallback != null) {
        config['forceFallback'] = dropzoneConfiguration.forceFallback;
      }
      if (dropzoneConfiguration.fallback != null) {
        config['fallback'] = allowInterop(dropzoneConfiguration.fallback);
      }
      if (dropzoneConfiguration.dictDefaultMessage != null) {
        config['dictDefaultMessage'] = dropzoneConfiguration.dictDefaultMessage;
      }
      if (dropzoneConfiguration.dictFallbackMessage != null) {
        config['dictFallbackMessage'] =
            dropzoneConfiguration.dictFallbackMessage;
      }
      if (dropzoneConfiguration.dictFallbackText != null) {
        config['dictFallbackText'] = dropzoneConfiguration.dictFallbackText;
      }
      if (dropzoneConfiguration.dictInvalidFileType != null) {
        config['dictInvalidFileType'] =
            dropzoneConfiguration.dictInvalidFileType;
      }
      if (dropzoneConfiguration.dictFileTooBig != null) {
        config['dictFileTooBig'] = dropzoneConfiguration.dictFileTooBig;
      }
      if (dropzoneConfiguration.dictResponseError != null) {
        config['dictResponseError'] = dropzoneConfiguration.dictResponseError;
      }
      if (dropzoneConfiguration.dictCancelUpload != null) {
        config['dictCancelUpload'] = dropzoneConfiguration.dictCancelUpload;
      }
      if (dropzoneConfiguration.dictCancelUploadConfirmation != null) {
        config['dictCancelUploadConfirmation'] =
            dropzoneConfiguration.dictCancelUploadConfirmation;
      }
      if (dropzoneConfiguration.dictRemoveFile != null) {
        config['dictRemoveFile'] = dropzoneConfiguration.dictRemoveFile;
      }
      if (dropzoneConfiguration.dictMaxFilesExceeded != null) {
        config['dictMaxFilesExceeded'] =
            dropzoneConfiguration.dictMaxFilesExceeded;
      }
    }
    JsObject jsObject = new JsObject(context['Dropzone'],
        [_elementRef.nativeElement, new JsObject.jsify(config)]);
    dropzone = new Dropzone(jsObject);
    eventEmitter.emit(this.dropzone);
  }
}

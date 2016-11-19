// Copyright (c) 2016, Nick Ng. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

class DropzoneConfiguration {

  String url;
  String method;
  int parallelUploads;
  int maxFilesize;
  int filesizeBase;
  String paramName;
  bool uploadMultiple;
  Map<String, String> headers;
  bool addRemoveLinks;
  dynamic previewsContainer;
  dynamic hiddenInputContainer;
  bool clickable;
  bool createImageThumbnails;
  int maxThumbnailFilesize;
  int thumbnailWidth;
  int thumbnailHeight;
  int maxFiles;
  Function resize;
  Function init;
  String acceptedFiles;
  Function accept;
  Function renameFilename;
  bool autoProcessQueue;
  String previewTemplate;
  bool forceFallback;
  Function fallback;
  String dictDefaultMessage;
  String dictFallbackMessage;
  String dictFallbackText;
  String dictInvalidFileType;
  String dictFileTooBig;
  String dictResponseError;
  String dictCancelUpload;
  String dictCancelUploadConfirmation;
  String dictRemoveFile;
  String dictMaxFilesExceeded;

  DropzoneConfiguration({ this.url,
  this.method,
  this.parallelUploads,
  this.maxFilesize,
  this.filesizeBase,
  this.paramName,
  this.uploadMultiple,
  this.headers,
  this.addRemoveLinks,
  this.previewsContainer,
  this.hiddenInputContainer,
  this.clickable,
  this.createImageThumbnails,
  this.maxThumbnailFilesize,
  this.thumbnailWidth,
  this.thumbnailHeight,
  this.maxFiles,
  this.resize,
  this.init,
  this.acceptedFiles,
  this.accept,
  this.renameFilename,
  this.autoProcessQueue,
  this.previewTemplate,
  this.forceFallback,
  this.fallback,
  this.dictDefaultMessage,
  this.dictFallbackMessage,
  this.dictFallbackText,
  this.dictInvalidFileType,
  this.dictFileTooBig,
  this.dictResponseError,
  this.dictCancelUpload,
  this.dictCancelUploadConfirmation,
  this.dictRemoveFile,
  this.dictMaxFilesExceeded
  });
}

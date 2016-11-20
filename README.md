# dropzone_angular_dart

[Dropzone](http://www.dropzonejs.com/) for [Angular Dart](https://angular.io/dart).

[Demo/Docs](https://ngyewch.github.io/dropzone-angular-dart/)

## Setup

pubspec.yaml:

    dependencies:
      dropzone_angular_dart: 

HTML:

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/dropzone/4.3.0/min/dropzone.min.css" />

    <script src="https://cdnjs.cloudflare.com/ajax/libs/dropzone/4.3.0/min/dropzone.min.js"></script>

Dart:

    import 'package:dropzone_angular_dart/dropzone_angular_dart.dart';

## Usage

HTML:

    <div (dropzone)="initDropzone($event)" [config]="dropzoneConfiguration" class="dropzone"></div>
   
    <p *ngIf="uploadedFile != null">
        Uploaded file type = {{ uploadedFile.type }}<br/>
        Uploaded file size = {{ uploadedFile.size | number }}<br/>
        Upload response = {{ uploadResponse }}<br/>
    </p>

Dart:

    import 'dart:html';
    
    import 'package:angular2/core.dart';
    import 'package:dropzone_angular_dart/dropzone_angular_dart.dart';
    
    @Component(
        selector: 'my-app',
        styleUrls: const ['AppComponent.css'],
        templateUrl: 'AppComponent.html',
        directives: const [DROPZONE_DIRECTIVES])
    class AppComponent {
    
      DropzoneConfiguration dropzoneConfiguration = new DropzoneConfiguration(
          url: 'http://localhost:8081/upload', addRemoveLinks: true, maxFiles: 1);
      Dropzone dropzone;
      Blob uploadedFile = null;
      String uploadResponse = null;
      NgZone zone;
    
      AppComponent(this.zone);
    
      void initDropzone(Dropzone dropzone) {
        this.dropzone = dropzone;
        this.dropzone.on("success", success);
      }
    
      void success(Blob file, String response, Event event) {
        print('success(' + file.toString() + ", " + response + ", " +
            event.toString() + ")");
        zone.run(() {
          uploadedFile = file;
          uploadResponse = response;
        });
      }
    }

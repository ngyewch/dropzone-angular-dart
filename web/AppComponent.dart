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

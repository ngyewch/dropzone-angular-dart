import 'dart:html';

import 'package:angular2/core.dart';
import 'package:dropzone_angular_dart/dropzone_angular_dart.dart';

@Component(
    selector: 'my-app',
    styleUrls: const ['AppComponent.css'],
    templateUrl: 'AppComponent.html',
    directives: const [DROPZONE_DIRECTIVES])
class AppComponent {

  DropzoneConfiguration dropzoneConfiguration = new DropzoneConfiguration(url: '/upload');
  Dropzone dropzone;

  void initDropzone(Dropzone dropzone) {
    this.dropzone = dropzone;
    this.dropzone.on("drop", drop);
    this.dropzone.on("addedfile",addedfile);
  }

  void drop(Event event) {
    print(event);
  }

  void addedfile(Blob file) {
    print(file.type + " / " + file.size.toString());
    print(dropzone.getAcceptedFiles().runtimeType.toString());
  }
}

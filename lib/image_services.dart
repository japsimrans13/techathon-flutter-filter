import 'package:image_picker/image_picker.dart';

class PickImage {
  static pickImageFromGallery() async {
    final ImagePicker _picker = ImagePicker();
// Pick an image
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    return image;
  }

  static pickImagesFromGallery() async {
    final ImagePicker _picker = ImagePicker();
    // Capture a video
    // Pick multiple images
    final List<XFile>? images = await _picker.pickMultiImage();
  }

  static captureImage() async {
    final ImagePicker _picker = ImagePicker();

// Capture a photo
    final XFile? photo = await _picker.pickImage(source: ImageSource.camera);
    return photo;
  }

  static captureVideo() async {
    final ImagePicker _picker = ImagePicker();
    // Capture a video
    final XFile? video = await _picker.pickVideo(source: ImageSource.camera);
    return video;
  }

  static pickVideoFromGallery() async {
    final ImagePicker _picker = ImagePicker();
    // Capture a video
    // Pick multiple images
    final XFile? video = await _picker.pickVideo(source: ImageSource.gallery);
    return video;
  }
}

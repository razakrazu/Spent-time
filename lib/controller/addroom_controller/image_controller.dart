import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:spent_time/core/color.dart';

class ImageController extends GetxController{
ImageController get instance => Get.find();



final ImagePicker picker = ImagePicker();
List<XFile>? images= [];
// FirebaseStorage storageRef =FirebaseStorage.instance;
List<String> listImagePath = [];
var downloadUrlImage = 0.obs;


void selectMultipleImage() async{
  images = await picker.pickMultiImage();
  if(images!=null){
for(XFile file in images!){
listImagePath.add(file.path);
}
  }else{
    Get.snackbar('Fail', 'No image selected',
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: Colors.red,
    colorText: WhiteColor);
  }
downloadUrlImage.value = listImagePath.length;

}


// void uploadImage(){
//   if(downloadUrlImage.value>0){
//     Get.dialog(Center(child: CircularProgressIndicator(),),
//     barrierDismissible: false,
//     );
//     ImageUploadProvider().uploadImage(listImagePath).then((resp) {
// Get.back();
// if(resp=='success'){

  
//     Get.snackbar('Success', 'Image Uploaded',
//     snackPosition: SnackPosition.BOTTOM,
//     backgroundColor: Colors.green,
//     colorText: WhiteColor);
//     images =[];
//     listImagePath =[];
//     downloadUrlImage.value=listImagePath.length;

// }

//     }).onError((error, stackTrace) {
//       Get.back();    
//         Get.snackbar('Fail', 'Samething want wrong',
//     snackPosition: SnackPosition.BOTTOM,
//     backgroundColor: Colors.red,
//     colorText: WhiteColor);  
//     });
//   }else{

//     Get.snackbar('Fail', 'No image selected',
//     snackPosition: SnackPosition.BOTTOM,
//     backgroundColor: Colors.red,
//     colorText: WhiteColor);
//   }
// }



  Future<void>uploadImage(XFile images,BuildContext context) async{
  try {
      String uniqueFilename = DateTime.now().millisecondsSinceEpoch.toString();
      Reference referenceRoot = FirebaseStorage.instance.ref();
      Reference referenceDirImages = referenceRoot.child('profileImg');
      Reference referenceImagetoupload =
          referenceDirImages.child(uniqueFilename);
      await referenceImagetoupload.putFile(
        File(images.path),
        SettableMetadata(contentType: 'image/jpeg'),
      );
      Get.dialog(
      const Dialog(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircularProgressIndicator(),
              SizedBox(height: 16),
              Text('Uploading '),
            ],
          ),
        ),
      ),
    );
      downloadUrlImage = (await referenceImagetoupload.getDownloadURL()) as RxInt;
    } catch (e) {
      print('Error uploading file: $e');
    }
  }
  }





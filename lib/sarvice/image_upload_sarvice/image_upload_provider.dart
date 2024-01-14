import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:spent_time/view/addroom_screen/addroom_screen.dart';

class ImageUploadProvider extends GetConnect{




    // try{
    //   final form = FormData({});

    //   for(String path in list){
    //     form.files.add(MapEntry("file[]",MultipartFile(File(path), filename: "${DateTime.now().millisecondsSinceEpoch}.${path.split('.').last}"), ));
    //   }
    //   final response =await post('link', form);
    //   if(response.status.hasError){
    //     return Future.error(response.body);
    //   }else{
    //     return response.body['result'];
    //   }
    // } catch(exception){
    //   return Future.error(exception.toString());
    // }
  
// Future<void> uploadImage(XFile pickedFile, BuildContext context) async {
//     try {
//       String uniqueFilename = DateTime.now().millisecondsSinceEpoch.toString();
//       Reference referenceRoot = FirebaseStorage.instance.ref();
//       Reference referenceDirImages = referenceRoot.child('profileImg');
//       Reference referenceImagetoupload =
//           referenceDirImages.child(uniqueFilename);
//       await referenceImagetoupload.putFile(
//         File(pickedFile.path),
//         SettableMetadata(contentType: 'image/jpeg'),
//       );
//       Get.dialog(
//       const Dialog(
//         child: Padding(
//           padding: EdgeInsets.all(16.0),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               CircularProgressIndicator(),
//               SizedBox(height: 16),
//               Text('Uploading '),
//             ],
//           ),
//         ),
//       ),
//     );
//       downloadUrlImage = await referenceImagetoupload.getDownloadURL();
//     } catch (e) {
//       print('Error uploading file: $e');
//     }
//   }
}
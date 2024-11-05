import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp/widgets/uihelper.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController nameController = TextEditingController();

  File? pickeedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            Uihelper.CustomText(
              text: "Profile info",
              height: 20,
              color: const Color(0xFF00A884),
              fontweight: FontWeight.bold,
            ),
            const SizedBox(
              height: 30,
            ),
            Uihelper.CustomText(
              text: 'Please provide your name and an optional',
              height: 15,
            ),
            Uihelper.CustomText(
              text: 'profile photo.',
              height: 15,
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                _pickImage(ImageSource.gallery);
              },
              child: pickeedImage == null
                  ? CircleAvatar(
                      radius: 80,
                      backgroundColor: const Color(0xFFD9D9D9),
                      child: Image.asset(
                        'assets/images/photo-camera 1.png',
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    )
                  : CircleAvatar(
                      radius: 80,
                      backgroundImage: FileImage(pickeedImage!),
                    ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 300,
                  child: TextField(
                    keyboardType: TextInputType.name,
                    controller: nameController,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF05AA82),
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF05AA82),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF05AA82),
                        ),
                      ),
                      hintText: 'Type your name here',
                      hintStyle: TextStyle(
                        color: Color(0xFF5E5E5E),
                      ),
                    ),
                  ),
                ),
                Image.asset(
                  'assets/images/happy-face 1.png',
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Uihelper.CustomButton(
        callback: () {},
        buttonname: 'Next',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  // _openBottom(BuildContext context) {
  //   return showModalBottomSheet(
  //     context: context,
  //     builder: (BuildContext context) {

  //       return Container(
  //         height: 200,
  //         width: 200,
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //               children: [
  //                 Column(
  //                   children: [
  //                     IconButton(
  //                       onPressed: () {
  //                         _pickImage(ImageSource.camera);
  //                       },
  //                       icon: const Icon(
  //                         Icons.camera_alt,
  //                         size: 50,
  //                       ),
  //                     ),
  // const Text(
  //   'Camera',
  //   style: TextStyle(
  //       color: Colors.black, fontWeight: FontWeight.w600),
  // ),
  //                   ],
  //                 ),
  //                 const SizedBox(
  //                   width: 20,
  //                 ),
  //                 Column(
  //                   children: [
  //                     IconButton(
  //                       onPressed: () {
  //                         _pickImage(ImageSource.gallery);
  //                       },
  //                       icon: const Icon(
  //                         Icons.image,
  //                         size: 50,
  //                       ),
  //                     ),
  //                     // const Text(
  //                     //   'Gallery',
  //                     //   style: TextStyle(
  //                     //       color: Colors.black, fontWeight: FontWeight.w600),
  //                     // ),
  //                   ],
  //                 )
  //               ],
  //             )
  //           ],
  //         ),
  //       );
  //     },
  //   );
  // }

  _pickImage(ImageSource imagesource) async {
    try {
      final photo = await ImagePicker().pickImage(source: imagesource);
      if (photo == null) {
        return;
      }
      final tempimage = File(photo.path);
      setState(() {
        pickeedImage = tempimage;
      });
    } catch (e) {
      // ignore: use_build_context_synchronously
      return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.toString()),
          backgroundColor: const Color(0xFF00A884),
        ),
      );
    }
  }
}

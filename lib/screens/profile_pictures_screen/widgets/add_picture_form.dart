import 'package:clinix_admin_panel/core/utils/colors.dart';
import 'package:clinix_admin_panel/core/utils/text_style.dart';
import 'package:clinix_admin_panel/core/widgets/custom_span_description.dart';
import 'package:clinix_admin_panel/screens/profile_peforafter_screen/widgets/custom_image_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../core/widgets/custom_container_button.dart';

class AddPicturForm extends StatefulWidget {
  const AddPicturForm({super.key});

  @override
  State<AddPicturForm> createState() => _AddPicturFormState();
}

class _AddPicturFormState extends State<AddPicturForm> {
  ImagePicker imagePicker = ImagePicker();
  List<XFile> pickedImages = [];

  Future<void> pickedMultyImages() async {
    try {
      List<XFile> images = await imagePicker.pickMultiImage();
      if (images.isNotEmpty) {
        pickedImages.addAll(images);
        setState(() {});
      } else {
        setState(() {
          pickedImages = images;
        });
      }
    } catch (error) {
      print(error.toString());
    }
  }

  Future<void> removeImage({required String pathImage}) async {
    pickedImages.removeWhere((element) {
      return element.path == pathImage;
    });
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Column(
      children: [
        const CustomSpanDescription(
            desc:
                'Pictures are priceless when it comes to promoting Clinics, as statistics show that 68% of people surfing the internet will relate more to a photograph than any written article. Using relatable images with people where possible is very important when it comes to being accurate on the service you have to offer.'),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomContainerButton(
                paddingWidth: width * .1,
                paddingheight: 5,
                onTap: pickedMultyImages,
                buttonName: 'Add Images'),
            const SizedBox(width: 20),
            CustomContainerButton(
                paddingWidth: width * .1,
                paddingheight: 5,
                onTap: pickedImages.isNotEmpty ? () {} : () {},
                buttonName: 'Uplode')
          ],
        ),
        const SizedBox(height: 10),
        pickedImages.isEmpty
            ? Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: AppColor.selecteColor)),
                height: height * .2,
                width: width * .5,
                child: const Center(
                  child: ResponsiveTextStyle(
                      color: AppColor.darkblack,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      text: 'You can Add Multi Images here...'),
                ),
              )
            : Container(
                margin: const EdgeInsetsDirectional.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color: pickedImages.isEmpty
                            ? Colors.transparent
                            : AppColor.selecteColor)),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: pickedImages
                        .map((e) => CustomImageItem(
                            image: e,
                            height: height,
                            width: width,
                            firstIconColor: AppColor.darkred,
                            secondeIconColor: AppColor.selecteColor,
                            firstIconName: 'Remove',
                            secondeIconName: 'Uplode',
                            firstIconOnPressed: () {
                              removeImage(pathImage: e.path);
                            },
                            secondeIconOnPressed: () {},
                            firstIcon: Icons.remove,
                            secondeIcon: CupertinoIcons.cloud_upload))
                        .toList(),
                  ),
                ),
              ),
      ],
    );
  }
}

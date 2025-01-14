import 'dart:developer';

import 'package:clinix_admin_panel/core/utils/colors.dart';
import 'package:clinix_admin_panel/core/widgets/custom_span_description.dart';
import 'package:clinix_admin_panel/screens/profile_peforafter_screen/widgets/custom_befor_after_container.dart';
import 'package:clinix_admin_panel/screens/profile_peforafter_screen/widgets/custom_image_item.dart';
import 'package:clinix_admin_panel/screens/profile_peforafter_screen/widgets/custom_text_description.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class WebTabletView extends StatefulWidget {
  const WebTabletView({super.key});

  @override
  State<WebTabletView> createState() => _WebTabletViewState();
}

class _WebTabletViewState extends State<WebTabletView> {
  ImagePicker imagePicker = ImagePicker();
  List<XFile> beforImages = [];
  List<XFile> afterImages = [];

  Future<void> pickedMultyBeforImages() async {
    try {
      List<XFile> images = await imagePicker.pickMultiImage();
      if (images.isNotEmpty) {
        beforImages.addAll(images);
        setState(() {});
      } else {
        setState(() {
          beforImages = images;
        });
      }
    } catch (error) {
      log(error.toString());
    }
  }

  Future<void> pickedMultyafterImages() async {
    try {
      List<XFile> images = await imagePicker.pickMultiImage();
      if (images.isNotEmpty) {
        afterImages.addAll(images);
        setState(() {});
      } else {
        setState(() {
          afterImages = images;
        });
      }
    } catch (error) {
      log(error.toString());
    }
  }

  Future<void> removeImageinBeforList({required String pathImage}) async {
    beforImages.removeWhere((element) {
      return element.path == pathImage;
    });
    setState(() {});
  }

  Future<void> removeImageinAfterList({required String pathImage}) async {
    afterImages.removeWhere((element) {
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
        const SizedBox(height: 15),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  CustomBeforAfterContainer(
                    uplodePressed: () {},
                    listIsEmpty: beforImages.isEmpty,
                    text: 'Before...',
                    onPressed: pickedMultyBeforImages,
                  ),
                  ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: beforImages.length,
                    itemBuilder: (context, index) {
                      return CustomImageItem(
                        image: beforImages[index],
                        height: height,
                        width: width,
                        firstIconColor: AppColor.darkred,
                        secondeIconColor: AppColor.selecteColor,
                        firstIconName: 'Remove',
                        secondeIconName: 'Display',
                        firstIconOnPressed: () {
                          removeImageinBeforList(
                              pathImage: beforImages[index].path);
                        },
                        firstIcon: Icons.remove,
                        secondeIcon: CupertinoIcons.fullscreen,
                        secondeIconOnPressed: () {
                          showFullSizeImage(context, beforImages[index]);
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    CustomBeforAfterContainer(
                        uplodePressed: () {},
                        listIsEmpty: afterImages.isEmpty,
                        text: 'After...',
                        onPressed: pickedMultyafterImages),
                    ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: afterImages.length,
                      itemBuilder: (context, index) {
                        return CustomImageItem(
                          image: afterImages[index],
                          height: height,
                          width: width,
                          firstIconColor: AppColor.darkred,
                          secondeIconColor: AppColor.selecteColor,
                          firstIconName: 'Remove',
                          secondeIconName: 'Display',
                          firstIcon: Icons.remove,
                          secondeIcon: CupertinoIcons.fullscreen,
                          firstIconOnPressed: () {
                            removeImageinAfterList(
                                pathImage: afterImages[index].path);
                          },
                          secondeIconOnPressed: () {
                            showFullSizeImage(context, afterImages[index]);
                          },
                        );
                      },
                    ),
                  ],
                )),
            const SizedBox(width: 10),
            const Expanded(
                flex: 2,
                child: Column(
                  children: [
                    CustomTextDescription(
                        title: 'Building Trust and Credibility',
                        desc:
                            'Transparently showcasing actual patient transformations can build trust and credibility for the practice. Patients are more likely to trust a clinic that provides concrete evidence of successful outcomes.'),
                    SizedBox(height: 20),
                    CustomTextDescription(
                        title: 'Attracting New Patients',
                        desc:
                            'Before and after pictures can be used to attract new patients by highlighting the clinics ability to deliver positive results. Potential patients are often intrigued by visual evidence of the transformative impact of the clinics expertise and treatments.'),
                    SizedBox(height: 20),
                    CustomTextDescription(
                        title: 'Differentiation from Competitors',
                        desc:
                            'In a competitive healthcare market, before and after pictures can differentiate a clinic from others by showing superior results. This may be especially true in specialties where aesthetic or functional improvements are the primary outcomes.'),
                    SizedBox(height: 20),
                    CustomTextDescription(
                        title: 'Specialized Fields',
                        desc:
                            'In certain medical specialties, such as orthodontics, weight loss clinics, and hair restoration, before and after photos are important to showcase the transformative effects of certain treatments.'),
                    SizedBox(height: 20),
                    CustomTextDescription(
                        title: 'Evidence-Based Marketing',
                        desc:
                            'Before and after images serve as proof of the clinics commitment to delivering positive results. This evidence-based approach can be reassuring for patients seeking safe and effective medical care.'),
                    SizedBox(height: 20),
                    CustomSpanDescription(
                        desc:
                            'As with any use of patient images, it is crucial to prioritize patient privacy and confidentiality. Obtaining informed consent and ensuring compliance with relevant regulations is important for maintaining ethical practices in clinical marketing.')
                  ],
                )),
          ],
        ),
      ],
    );
  }

  void showFullSizeImage(BuildContext context, XFile image) {
    showAdaptiveDialog(
      barrierDismissible: true,
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          child: Card(
            margin: const EdgeInsetsDirectional.all(10),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            elevation: 10,
            clipBehavior: Clip.hardEdge,
            child: Image.network(
              image.path,
              fit: BoxFit.contain,
            ),
          ),
        );
      },
    );
  }
}
